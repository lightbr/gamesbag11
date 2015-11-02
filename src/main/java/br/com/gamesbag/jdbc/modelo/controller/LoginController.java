package br.com.gamesbag.jdbc.modelo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

@Controller
public class LoginController {

	
	 @RequestMapping("loginForm")
	  public String loginForm() {
	    return "login";
	  }
	 
	 @RequestMapping("efetuaLogin")
	 public String efetuaLogin(Pessoa pessoa, HttpSession session) {
	   if(new PessoaDao().existePessoa(pessoa) != null) {
	     session.setAttribute("pessoaLogada", pessoa);
	     return "home";
	   }
	   return "redirect:loginForm";
	 }
	 
	 @RequestMapping("logout")
	 public String logout(HttpSession session) {
	   session.invalidate();
	   return "redirect:loginForm";
	 }
	 
	 @RequestMapping("principal")
	  public String principal() {
	    return "home";
	  }
}
