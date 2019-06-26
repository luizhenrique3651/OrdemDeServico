package br.com.devworks.dal;


/* @author luiz
 */

import java.sql.*;
import javax.swing.JOptionPane;

public class ModuloConexao {
    
    //parametros para conexao do codigo com o banco, driver, usuario, senha e banco
    
   public static Connection conector(){
   java.sql.Connection conexao = null;
   //abaixo, chamada do driver
   String driver = "com.mysql.jdbc.Driver";
   String url = "jdbc:mysql://localhost:3306/dbOrdemServico?useSSL=true";
   String user = "luiz";
   String password = "luiz123";
 
   //try catch para tentar realizar a conexao e se nao for possivel, retornar exceção
       try {
           Class.forName(driver);
           conexao = DriverManager.getConnection(url, user, password);
           return conexao;
       } catch (Exception e) {
           String mensagemErro = "Caro usuário, houve um erro na execução da"
                   + " ferramenta, copie e cole o codigo abaixo e mande para o"
                   + " desenvolvedor. \n \n" +e+ " \n \n email do desenvolvedor:"
                   + " luiz.albuquerque@braservpetroleo.com.br"; 
           
           JOptionPane.showMessageDialog(null, mensagemErro);

           return null;
       }
       
   }
    
}
