package br.com.gamesbag.jdbc.teste;

import java.util.List;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

public class TestaLista {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		PessoaDao dao = new PessoaDao();

		List<Pessoa> pessoas = dao.getLista();

		for (Pessoa pessoa : pessoas) {
			System.out.println("Nome: " + pessoa.getUsername());
			System.out.println("Email: " + pessoa.getEmail());
			System.out.println("Senha: " + pessoa.getSenha());			  
		}	
	}

}
