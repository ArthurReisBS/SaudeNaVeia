package main.java.dao;

import main.java.beans.Avaliacao;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * @author keijo
 */
public class AvaliacaoDAO {
    private Conexao conexao;
    private Connection conn;
    
    public Avaliacao DAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
        return null;
    }
    public void inserir(Avaliacao historico){
        String sql = "INSERT INTO avaliacao (comentarios,nota,usuario) VALUES (?,?,?)";
        try{
            PreparedStatement stmt =this.conn.prepareStatement(sql);
            stmt.setString(1, historico.getComentarios());
            stmt.setInt(2, historico.getNota());
            stmt.setString(3, historico.getUsuario());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir produto: "+ e.getMessage());
        }
    }
}
