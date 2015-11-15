package br.com.gamesbag.jdbc.modelo.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.JogoDao;


@Controller
public class JogoController {
	
	@RequestMapping("jogo")
	  public String usuario(Model model, int id) throws IOException {
		JogoDao dao = new JogoDao();
		model.addAttribute("jogo", dao.getJogo(id));
	    return "jogo";
	  }
	
}
