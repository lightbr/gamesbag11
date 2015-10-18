package br.com.gamesbag.jdbc.modelo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;


@Controller
public class CadastroController {
	
	
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
	
	
	

}
