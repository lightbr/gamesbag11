package br.com.gamesbag.jdbc.teste;

import br.com.gamesbag.jdbc.dao.PessoaDao;
import br.com.gamesbag.jdbc.modelo.Pessoa;

public class TestaRemove {

	public static void main(String[] args) {

		// pronto para gravar
		Pessoa pessoa = new Pessoa();
		pessoa.setIdPessoa(3);


		// grave nessa conex�o!!!
		PessoaDao dao = new PessoaDao();

		// m�todo elegante
		dao.remove(pessoa);

		System.out.println("Removido!");
	}

}
