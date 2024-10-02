package main.java.conexao;
import java.sql.Connection;
import java.sql.DriverManager;
        
public class Conexao {
    public Connection getConexao(){
        try{
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/saudenaveia", 
                    "root", 
                    "");
            return conn;
        }catch(Exception e){
            System.out.println("Erro de conexao "+ e.getMessage());
            return null;
        }
    } 
}
