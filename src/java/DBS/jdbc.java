/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;



import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Logger;
import org.apache.log4j.Priority;
import org.apache.log4j.PropertyConfigurator;

/**
 *
 * @author Lenovo
 */
public class jdbc extends HttpServlet {
   int n;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    doGet(request,response);

        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     doPost(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String  uname = request.getParameter("name");
             String  uphone = request.getParameter("phone");
             String  usex = request.getParameter("sex");
             String  uage = request.getParameter("age");
             String  ukeshi = request.getParameter("keshi");
         PrintWriter out = response.getWriter();

         response.setContentType("text/html;charset=UTF-8");
        try{
        Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
//注意要去网上下载该驱动，并放到tomcat中的lib目录下
        String url="jdbc:mysql://localhost:3306/hospital";//test为数据库名称
        String username="root";//root为你的数据库名称
        String password="abc123";//此处为连接数据库密码
       
        Connection conn= DriverManager.getConnection(url,username,password);
     
        
        //执行查询语句，返回结果集
        String sql= "insert into test(name,phone,sex,age,keshi) values(?,?,?,?,?)";
          PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString( 1,uname);
            pstmt.setString( 2,uphone);
            pstmt.setString(3, usex);
            pstmt.setString(4,uage);
            pstmt.setString(5, ukeshi);
            pstmt.executeUpdate();
   
           
           

        Logger logger = Logger.getLogger(jdbc.class);
        
        PropertyConfigurator.configure("F:\\log4j.properties");
           
         logger.debug("Error!!!!");

         logger.info(uname+ " " +uphone +" " +usex+" "+uage+" "+ukeshi+"");

        //
logger.debug(jdbc.class.getName());




    }catch (SQLException sqlexception) {
        sqlexception.printStackTrace();
    }   catch (ClassNotFoundException ex) {
        
        }
      out.println(" <a href=\"Login.jsp\" target=\"_blank\">Login</a> ");
    
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
