package br.com.gamesbag.jdbc.modelo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaDao;
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
	  public String usuario(Model model, String id) {
		PessoaDao dao = new PessoaDao();
		model.addAttribute("usuario", dao.getPessoa(id));
	    return "pessoa";
	  }
}
