package br.com.gamesbag.jdbc.modelo.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.dao.PessoaJogoDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

@Controller
public class PessoaController {
	
	@RequestMapping("novoCadastro")
	  public String form() {
	    return "cadastro";
	  }
	
	@RequestMapping("cadastraPessoa")
	  public String adiciona(Pessoa pessoa) {
	    PessoaDao dao = new PessoaDao();
	    dao.adiciona(pessoa);
	    return "olamundo";
	  }
	
	@RequestMapping("listaPessoas")
	public String lista(Model model, String busca) {
	  PessoaDao dao = new PessoaDao();
	  model.addAttribute("pessoas", dao.getLista(busca));
	  return "listapessoa";
	}
	
	@RequestMapping("usuario")
	  public String usuario(Model model, int id, HttpSession session) throws IOException {
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		PessoaDao dao = new PessoaDao();
		PessoaJogoDao jogodao = new PessoaJogoDao();
		model.addAttribute("usuario", dao.getPessoa(id));
		model.addAttribute("relacionamento", dao.existeRelacionamento(id, pessoa.getIdPessoa()));
		model.addAttribute("jogoquero", jogodao.getAdicionado(id,"quero"));
		model.addAttribute("jogojoguei", jogodao.getAdicionado(id,"joguei"));
		model.addAttribute("jogojogando", jogodao.getAdicionado(id,"jogando"));
		model.addAttribute("jogoterminei", jogodao.getAdicionado(id,"terminei"));
	    return "pessoa";
	  }
	
	@RequestMapping("seguirPessoa")
      public String seguir (HttpSession session, int id){
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		System.out.println(pessoa.getIdPessoa());
		System.out.println(id);
		PessoaDao dao = new PessoaDao();
	    dao.seguir(id, pessoa.getIdPessoa());
	    String path = "redirect:usuario?id=" + id;
	    return path;
	}
	
	
	@RequestMapping("deseguirPessoa")
    public String deseguir (HttpSession session, int id){
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		System.out.println(pessoa.getIdPessoa());
		System.out.println(id);
		PessoaDao dao = new PessoaDao();
	    dao.deseguir(id, pessoa.getIdPessoa());
	    String path = "redirect:usuario?id=" + id;
	    return path;
	}
	
	
	@RequestMapping("listaSeguido")
	public String listaSeguido(HttpSession session, Model model) {
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		PessoaDao dao = new PessoaDao();
		model.addAttribute("pessoas", dao.getSeguido(pessoa.getIdPessoa()));
		return "listapessoa";
	}
	
	@RequestMapping("listaSeguidor")
	public String listaSeguidor(HttpSession session, Model model) {
	  Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
	  PessoaDao dao = new PessoaDao();
	  model.addAttribute("pessoas", dao.getSeguidor(pessoa.getIdPessoa()));
	  return "listapessoa";
	}
	
}
