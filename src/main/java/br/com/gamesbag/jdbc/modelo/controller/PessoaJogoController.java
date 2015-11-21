package br.com.gamesbag.jdbc.modelo.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaJogoDao;
import br.com.gamesbag.jdbc.modelo.Jogo;
import br.com.gamesbag.jdbc.modelo.Pessoa;


@Controller
public class PessoaJogoController {
	
	@RequestMapping("addJogo")
	public String addJogo(HttpSession session, String lista, int idJogo) throws IOException {
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		PessoaJogoDao dao = new PessoaJogoDao();
		System.out.println(idJogo);
		System.out.println(lista);
		dao.addLista(pessoa.getIdPessoa(), idJogo, lista);
		String path = "redirect:jogo?id=" + idJogo;
	    return path;
	  }
    
	@RequestMapping("removeJogo")
	public String removeJogo(HttpSession session, String lista, int idJogo) throws IOException {
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		PessoaJogoDao dao = new PessoaJogoDao();
		System.out.println(idJogo);
		System.out.println(lista);
		dao.removeLista(pessoa.getIdPessoa(), idJogo, lista);
		String path = "redirect:jogo?id=" + idJogo;
	    return path;
	  }
	
	@RequestMapping("listaAdicionado")
	public String listaSeguidor(HttpSession session, Model model, String lista) throws IOException {	
	  Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
	  PessoaJogoDao dao = new PessoaJogoDao();
	  model.addAttribute("jogos", dao.getAdicionado(pessoa.getIdPessoa(), lista));
	  return "listajogo";
	}
	

}
