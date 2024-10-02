/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package main.java.dao;
import main.java.beans.Medico;
import main.java.conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author diegu
 */
public class LoginMedicoDAO {
    private Conexao conexao;
    private Connection conn;
    
    public LoginMedicoDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
    public Medico autenticar(String usuario, String senha) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Medico medicos = null;

        try {
            String sql = "SELECT * FROM usuariosprofissionais WHERE usuario = ? AND senha = ?";
           

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario);
            stmt.setString(2, senha);

            rs = stmt.executeQuery();

            if (rs.next()) {
                medicos = new Medico();
                medicos.setUsuario(rs.getString("usuario"));
                medicos.setSenha(rs.getString("senha")); 
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao autenticar usuário: " + ex.getMessage());
        } finally {

            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar recursos: " + e.getMessage());
            }
        }


        return medicos;
    }
    }

