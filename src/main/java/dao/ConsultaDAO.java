package main.java.dao;

import main.java.beans.Consulta;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * @author keijo
 */
public class ConsultaDAO {
    private Conexao conexao;
    private Connection conn;
    
    public Consulta DAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
        return null;
    }
    public void inserir(Consulta cadastro){
        String sql = "INSERT INTO consulta (nome,motivo,data) VALUES (?,?,?)";
        try{
            PreparedStatement stmt =this.conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getNome());
            stmt.setString(2, cadastro.getMotivo());
            stmt.setInt(3, cadastro.getData());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir produto: "+ e.getMessage());
        }
    }
}
