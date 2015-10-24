package br.com.gamesbag.jdbc.teste;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

public class TestaAltera {

	public static void main(String[] args) {

		// pronto para alterar
		Pessoa pessoa = new Pessoa();
		pessoa.setUsername("Caelum3");
		pessoa.setEmail("3pessoa@caelum.com.br");
		pessoa.setSenha("33185");
		pessoa.setIdPessoa(1);


		// grave nessa conex�o!!!
		PessoaDao dao = new PessoaDao();

		// m�todo elegante
		dao.altera(pessoa);

		System.out.println("Alterado!");

	}

}

