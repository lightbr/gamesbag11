package br.com.gamesbag.jdbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.gamesbag.jdbc.ConnectionFactory;
import br.com.gamesbag.jdbc.modelo.Pessoa;

public final class PessoaDao {

	// a conexão com o banco de dados
	private Connection connection;

	public PessoaDao() {
		this.connection = new ConnectionFactory().getConnection();

	}

	public void adiciona(Pessoa pessoa) {
		String sql = "insert into pessoa " +
				"(username,email,senha)" +
				" values (?,?,?)";

		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setString(1,pessoa.getUsername());
			stmt.setString(2,pessoa.getEmail());
			stmt.setString(3,pessoa.getSenha());


			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Pessoa> getLista(String busca) {
		try {
			List<Pessoa> pessoas = new ArrayList<Pessoa>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from pessoa where username like ?");
			stmt.setString(1, busca + "%");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto Pessoa
				Pessoa pessoa = new Pessoa();
				pessoa.setIdPessoa(rs.getInt("idpessoa"));
				pessoa.setUsername(rs.getString("username"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setSenha(rs.getString("senha"));


				// adicionando o objeto à lista
				pessoas.add(pessoa);
			}
			rs.close();
			stmt.close();
			return pessoas;
			
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void altera(Pessoa pessoa) {
		String sql = "update pessoa set username=?, email=?,"+
				"senha=? where idpessoa=?";

		try {
			PreparedStatement stmt = connection
					.prepareStatement(sql);
			stmt.setString(1, pessoa.getUsername());
			stmt.setString(2, pessoa.getEmail());
			stmt.setString(3, pessoa.getSenha());
			stmt.setInt(4, pessoa.getIdPessoa());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void remove(Pessoa pessoa) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("delete from pessoa where idpessoa=?");
			stmt.setLong(1, pessoa.getIdPessoa());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public Pessoa existePessoa(Pessoa pessoa) {

		if(pessoa == null) {
			throw new IllegalArgumentException("Usuário não deve ser nulo");
		}

		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from pessoa where email = ? and senha = ?");
			stmt.setString(1, pessoa.getEmail());
			stmt.setString(2, pessoa.getSenha());
			ResultSet rs = stmt.executeQuery();

			if(rs.next())  
            {  
				pessoa.setIdPessoa(rs.getInt("idpessoa"));
				pessoa.setUsername(rs.getString("username"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setSenha(rs.getString("senha"));
				
				stmt.close();
				rs.close();
				
				return pessoa;
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
	
	public Pessoa getPessoa(int id) {
		try {
			Pessoa pessoa = new Pessoa();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from pessoa where idPessoa = ?");
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto Pessoa
				pessoa.setIdPessoa(rs.getInt("idpessoa"));
				pessoa.setUsername(rs.getString("username"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setSenha(rs.getString("senha"));
			}
			rs.close();
			stmt.close();
			return pessoa;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
  
	
	
	public void seguir(int idSeguindo, int idSeguidor) {
		String sql = "insert into relacionamento " +
				"(idseguindo,idseguidor)" +
				" values (?,?)";

		try {
			// prepared statement para inserção
			PreparedStatement stmt = connection.prepareStatement(sql);

			// seta os valores
			stmt.setInt(1,idSeguindo);
			stmt.setInt(2,idSeguidor);
			

			// executa
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public void deseguir(int idSeguindo, int idSeguidor) {
		try {
			PreparedStatement stmt = connection
					.prepareStatement("delete from relacionamento where idseguindo=? and idseguidor=?");
			stmt.setInt(1, idSeguindo);
			stmt.setInt(2, idSeguidor);
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	public boolean existeRelacionamento(int idSeguindo, int idSeguidor) {


		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from relacionamento where idseguindo=? and idseguidor=?");
			stmt.setInt(1, idSeguindo);
			stmt.setInt(2, idSeguidor);
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
	
	
	
	public List<Pessoa> getSeguido(int idSeguidor) {
		try {
			List<Pessoa> pessoas = new ArrayList<Pessoa>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from pessoa inner join relacionamento "
							+ "on pessoa.idPessoa = relacionamento.idSeguindo "
							+ "where relacionamento.idSeguidor = ?");
			stmt.setInt(1, idSeguidor);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto Pessoa
				Pessoa pessoa = new Pessoa();
				pessoa.setIdPessoa(rs.getInt("idpessoa"));
				pessoa.setUsername(rs.getString("username"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setSenha(rs.getString("senha"));


				// adicionando o objeto à lista
				pessoas.add(pessoa);
			}
			rs.close();
			stmt.close();
			return pessoas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Pessoa> getSeguidor(int idSeguido) {
		try {
			List<Pessoa> pessoas = new ArrayList<Pessoa>();
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from pessoa inner join relacionamento "
							+ "on pessoa.idPessoa = relacionamento.idSeguidor "
							+ "where relacionamento.idSeguindo = ?");
			stmt.setInt(1, idSeguido);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto Pessoa
				Pessoa pessoa = new Pessoa();
				pessoa.setIdPessoa(rs.getInt("idpessoa"));
				pessoa.setUsername(rs.getString("username"));
				pessoa.setEmail(rs.getString("email"));
				pessoa.setSenha(rs.getString("senha"));


				// adicionando o objeto à lista
				pessoas.add(pessoa);
			}
			rs.close();
			stmt.close();
			return pessoas;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	
	
} 
