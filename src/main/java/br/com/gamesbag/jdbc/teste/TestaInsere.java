package br.com.gamesbag.jdbc.teste;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

public class TestaInsere {

	public static void main(String[] args) {

		// pronto para gravar
		Pessoa pessoa = new Pessoa();
		pessoa.setUsername("Caelum2");
		pessoa.setEmail("2pessoa@caelum.com.br");
		pessoa.setSenha("23185");


		// grave nessa conex�o!!!
		PessoaDao dao = new PessoaDao();

		// m�todo elegante
		dao.adiciona(pessoa);

		System.out.println("Gravado!");
	}

}
