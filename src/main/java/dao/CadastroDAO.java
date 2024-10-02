package main.java.dao;

import main.java.beans.Cadastro;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * @author keijo
 */
public class CadastroDAO {
    private Conexao conexao;
    private Connection conn;
    
    public CadastroDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
        
    }
    public void CadastrarUsuario(Cadastro cadastro){
        String sql = "INSERT INTO usuarios (nome, idade, email, usuario, senha) VALUES (?,?,?,?,?)";
        try{
            PreparedStatement stmt =this.conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getNome());
            stmt.setInt(2, cadastro.getIdade());
            stmt.setString(3, cadastro.getEmail());
            stmt.setString(4, cadastro.getUsuario());
            stmt.setString(5, cadastro.getSenha());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir cadastro: "+ e.getMessage());
        }
    }
}
