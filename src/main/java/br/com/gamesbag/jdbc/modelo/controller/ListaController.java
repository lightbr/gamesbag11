package br.com.gamesbag.jdbc.modelo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaDao;

@Controller
public class ListaController {

	@RequestMapping("listaPessoas")
	public String lista(Model model) {
	  PessoaDao dao = new PessoaDao();
	  model.addAttribute("pessoas", dao.getLista());
	  return "listapessoa";
	}
}
