package br.com.gamesbag.jdbc.modelo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OlaMundoController {

  @RequestMapping("/olaMundoSpring")
  public String execute() {
      System.out.println("Executando a l�gica com Spring MVC");
      return "olamundo";
  }
}
