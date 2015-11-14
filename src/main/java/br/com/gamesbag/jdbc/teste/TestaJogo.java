package br.com.gamesbag.jdbc.teste;

import java.io.IOException;

import br.com.gamesbag.jdbc.dao.JogoDao;


public class TestaJogo {

	
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		JogoDao dao = new JogoDao();
		
		dao.getJogo();
		
	}
	
}
