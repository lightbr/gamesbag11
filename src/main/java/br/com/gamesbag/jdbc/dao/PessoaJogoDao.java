package br.com.gamesbag.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import br.com.gamesbag.jdbc.ConnectionFactory;
import br.com.gamesbag.jdbc.modelo.PessoaJogo;

public class PessoaJogoDao {
	
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

	
	
	
	
	

}
