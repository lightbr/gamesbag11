package br.com.gamesbag.jdbc.teste;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.gamesbag.jdbc.ConnectionFactory;

public class TestaConexao {

	public static void main(String[] args) throws SQLException {
		// TODO Auto-generated method stub

		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		connection.close();	
		
	}

}
