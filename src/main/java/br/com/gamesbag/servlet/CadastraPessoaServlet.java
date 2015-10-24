package br.com.gamesbag.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

/**
 * Servlet implementation class CadastraPessoaServlet
 */
@WebServlet("/CadastraPessoaServlet")
public class CadastraPessoaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastraPessoaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
    
	
		
		doGet(request, response);
	}
	
	
	
    protected void service(HttpServletRequest request,
                            HttpServletResponse response)
                            throws IOException, ServletException {
	
	// busca o writer
    PrintWriter out = response.getWriter();
                    
    // buscando os parâmetros no request
    String nome = request.getParameter("inputUsername");
    String email = request.getParameter("inputEmail");
    String senha = request.getParameter("inputSenha");

    
    // monta um objeto pessoa
    Pessoa pessoa = new Pessoa();
    pessoa.setUsername(nome);
    pessoa.setEmail(email);
    pessoa.setSenha(senha);
    
    // salva o pessoa
    PessoaDao dao = new PessoaDao();
    dao.adiciona(pessoa);
    
    // imprime o nome do pessoa que foi adicionado
    out.println("<html>");
    out.println("<body>");
    out.println("Pessoa " + pessoa.getUsername() +
            " adicionado com sucesso");
    out.println("</body>");
    out.println("</html>");
    }

}

