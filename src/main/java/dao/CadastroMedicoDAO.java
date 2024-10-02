package main.java.dao;

import main.java.beans.Medico;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * @author keijo
 */
public class CadastroMedicoDAO {
    private Conexao conexao;
    private Connection conn;
    
    public CadastroMedicoDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
        
    }
    
    public void CadastrarMedico(Medico cadastro){
        String sql = "INSERT INTO usuariosprofissionais (nome, usuario, email, area, senha) VALUES (?,?,?,?,?)";
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getNome());
            stmt.setString(2, cadastro.getUsuario());
            stmt.setString(3, cadastro.getEmail());
            stmt.setString(4, cadastro.getArea());
            stmt.setString(5, cadastro.getSenha());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir cadastro: "+ e.getMessage());
        }
    }
}
