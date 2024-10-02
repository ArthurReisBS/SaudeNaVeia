package main.java.dao;

import main.java.beans.HistoricoHospitalar;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;


public class HistoricoHospitalarDAO {
    private Conexao conexao;
    private Connection conn;
    
    public HistoricoHospitalar DAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
        return null;
    }
    public void inserir(HistoricoHospitalar historico){
        String sql = "INSERT INTO historicohospitalar (doencas,idade,convenio,usuario) VALUES (?,?,?,?)";
        try{
            PreparedStatement stmt =this.conn.prepareStatement(sql);
            stmt.setString(1, historico.getDoencas());
            stmt.setInt(2, historico.getIdade());
            stmt.setString(3, historico.getConvenio());
            stmt.setString(4, historico.getUsuario());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir produto: "+ e.getMessage());
        }
    }
}
