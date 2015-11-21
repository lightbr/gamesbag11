package br.com.gamesbag.jdbc.dao;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

import br.com.gamesbag.jdbc.ConnectionFactory;
import br.com.gamesbag.jdbc.modelo.Jogo;
import br.com.gamesbag.jdbc.modelo.PessoaJogo;

public class PessoaJogoDao {

	private final String USER_AGENT = "Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36";
	private Connection connection;

	public PessoaJogoDao() {
		this.connection = new ConnectionFactory().getConnection();

	}


	public void addLista(int idPessoa, int idJogo, String lista) {

		if (existePessoaJogo(idPessoa, idJogo)){

			String sql = "update pessoajogo set " + lista + "=? "
					+ "where idpessoa=? and idjogo=?";

			try {
				// prepared statement para inserção
				PreparedStatement stmt = this.connection.prepareStatement(sql);

				// seta os valores
				stmt.setInt(1,1);
				stmt.setInt(2,idPessoa);
				stmt.setInt(3,idJogo);

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		else  
		{

			String sql = "insert into pessoajogo " +
					"(idpessoa,idjogo," + lista + ")" +
					" values (?,?,?)";

			try {
				// prepared statement para inserção
				PreparedStatement stmt = this.connection.prepareStatement(sql);

				// seta os valores
				stmt.setInt(1,idPessoa);
				stmt.setInt(2,idJogo);
				stmt.setInt(3,1);

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}


	}



	public void removeLista(int idPessoa, int idJogo, String lista) {

		if (existePessoaJogo(idPessoa, idJogo)){

			String sql = "update pessoajogo set " + lista + "=? "
					+ "where idpessoa=? and idjogo=?";

			try {
				// prepared statement para inserção
				PreparedStatement stmt = this.connection.prepareStatement(sql);

				// seta os valores
				stmt.setNull(1, Types.INTEGER);
				stmt.setInt(2,idPessoa);
				stmt.setInt(3,idJogo);

				// executa
				stmt.execute();
				stmt.close();
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}	

	}




	public boolean existePessoaJogo(int idPessoa, int idJogo) {


		try {
			PreparedStatement stmt = 
					this.connection.prepareStatement("select * from pessoajogo "
							+ "where idpessoa=? and idjogo=?");
			stmt.setInt(1, idPessoa);
			stmt.setInt(2, idJogo);
			ResultSet rs = stmt.executeQuery();

			if(rs.next())  
			{  
				stmt.close();
				rs.close();
				return true;
			}  
			else  
			{  
				stmt.close();
				rs.close();
				return false;  
			}

		} catch (Exception e) {  
			throw new RuntimeException(e);    
		}  

	}  



	public PessoaJogo existeNaLista(int idPessoa, int idJogo) {


		try {
			PreparedStatement stmt = 
					this.connection.prepareStatement("select * from pessoajogo"
							+ " where idpessoa=? and idjogo=?");
			stmt.setInt(1, idPessoa);
			stmt.setInt(2, idJogo);
			ResultSet rs = stmt.executeQuery();

			if(rs.next())  
			{  
				PessoaJogo pessoaJogo = new PessoaJogo();

				pessoaJogo.setQuero(rs.getInt("quero"));
				pessoaJogo.setJoguei(rs.getInt("joguei"));
				pessoaJogo.setJogando(rs.getInt("jogando"));
				pessoaJogo.setTerminei(rs.getInt("terminei"));

				stmt.close();
				rs.close();
				return pessoaJogo;
			}  
			else  
			{  
				stmt.close();
				rs.close();
				return null;  
			}

		} catch (Exception e) {  
			throw new RuntimeException(e);    
		}  

	}  

	public List<Jogo> getAdicionado(int idPessoa, String lista) throws IOException {

		String sql ="select idJogo from pessoajogo where idPessoa=?"
				+ " and " + lista + "=?";

		try {

			List<Jogo> jogos = new ArrayList<Jogo>();
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, idPessoa);
			stmt.setInt(2, 1);

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				
				Jogo jogo = new Jogo();
				
				String urlString = "http://thegamesdb.net/api/GetGame.php?id=" + rs.getInt("idJogo");

				URL url = new URL(urlString);
				HttpURLConnection con = (HttpURLConnection) url.openConnection();

				// optional default is GET
				con.setRequestMethod("GET");

				//add request header
				con.setRequestProperty("User-Agent", USER_AGENT);

				int responseCode = con.getResponseCode();
				System.out.println("\nSending 'GET' request to URL : " + url);
				System.out.println("Response Code : " + responseCode);

				BufferedReader in = new BufferedReader(
						new InputStreamReader(con.getInputStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}
				in.close();

				//print result
				System.out.println(response.toString());

				SAXBuilder builder = new SAXBuilder();
				System.out.println(url);

				String xml = response.toString();
				InputStream stream = new ByteArrayInputStream(xml.getBytes("UTF-8"));

				try {
					Document document = (Document) builder.build(stream);
					Element rootNode = document.getRootElement();
					Element list = rootNode.getChild("Game");
					Element images = list.getChild("Images");
					List<Element> box = images.getChildren("boxart");

					jogo.setIdJogo(Integer.parseInt(list.getChildText("id")));
					jogo.setGameTitle(list.getChildText("GameTitle"));
					if(box.size() == 2){
						Element art = (Element) box.get(1);
						jogo.setBoxArt(art.getAttributeValue("thumb"));
						//jogo.setBoxArt(boxart.getChildText("boxart"));
					}else{
						Element art = (Element) box.get(0);
						jogo.setBoxArt(art.getAttributeValue("thumb"));
						//jogo.setBoxArt(boxart.getChildText("boxart"));
					}
					
				} catch (IOException io) {
					System.out.println(io.getMessage());
				} catch (JDOMException jdomex) {
					System.out.println(jdomex.getMessage());
				}
				
				jogos.add(jogo);

			}
			
			rs.close();
			stmt.close();
			return jogos;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
		
	}






}
