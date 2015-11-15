package br.com.gamesbag.jdbc.teste;

import java.io.IOException;

import br.com.gamesbag.jdbc.dao.JogoDao;
import br.com.gamesbag.jdbc.modelo.Jogo;


public class TestaJogo {

	
	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub

		JogoDao dao = new JogoDao();
		Jogo jogo = new Jogo();
		
		jogo = dao.getJogo(2);
		System.out.println(jogo.getIdJogo());
		System.out.println(jogo.getGameTitle());
		System.out.println(jogo.getPlatform());
		System.out.println(jogo.getDeveloper());
		System.out.println(jogo.getReleaseDate());
		System.out.println(jogo.getPublisher());
		System.out.println(jogo.getGenre());
		System.out.println(jogo.getEsrb());
		System.out.println(jogo.getRating());
		System.out.println(jogo.getOverview());
		System.out.println(jogo.getBoxArt());
	}
	
}
