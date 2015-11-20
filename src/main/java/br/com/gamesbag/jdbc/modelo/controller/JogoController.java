package br.com.gamesbag.jdbc.modelo.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.JogoDao;
import br.com.gamesbag.jdbc.dao.PessoaJogoDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;


@Controller
public class JogoController {
	
	@RequestMapping("jogo")
	  public String jogo(Model model, int id, HttpSession session) throws IOException {
		JogoDao dao = new JogoDao();
		Pessoa pessoa = (Pessoa) session.getAttribute("pessoaLogada");
		PessoaJogoDao dao2 = new PessoaJogoDao();
		model.addAttribute("jogo", dao.getJogo(id));
		model.addAttribute("listado", dao2.existeNaLista(pessoa.getIdPessoa(), id));
	    return "jogo";
	  }
	
	@RequestMapping("listaJogos")
	public String lista(Model model, String busca) throws IOException {
	  JogoDao dao = new JogoDao();
	  model.addAttribute("jogos", dao.getLista(busca));
	  return "listajogo";
	}
	
	
}
