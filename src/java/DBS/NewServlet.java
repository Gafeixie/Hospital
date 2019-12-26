package DBS;





/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**
 *
 * @author Lenovo
 */
public class NewServlet extends HttpServlet {

     protected void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
        //编码设置
        request.setCharacterEncoding("GBK");
        response.setContentType("text/html;charset=gbk");
        String uri=request.getRequestURI();
          PrintWriter out = response.getWriter();
     
        String path=uri.substring(uri.lastIndexOf("/"),uri.lastIndexOf("."));
        UserServiceImpl service= new UserServiceImpl(new UserDaoImpl());
       //根据叠取的请求名转发到对用的页面
    if(path.equals("/guahao_1")){
           String name=request.getParameter("name");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String keshi = request.getParameter("keshi");
        String sex=request.getParameter("sex");
        //根据用户名查找用户是否存在，如果存在给一个提示，继续留在注册界面
        if(name.isEmpty()){
            request.setAttribute("guahao_err","用户名不能为空");
            request.getRequestDispatcher("guahao_1.jsp").forward(request, response);
        }else if(phone.isEmpty()){
                request.setAttribute("guahao_err1", "密码不能为空");
                request.getRequestDispatcher("guahao_1.jsp").forward(request, response);
        }else{
            User user = null;
            try {
                user = service.findByUser(name);
            } catch (ClassNotFoundException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if(user.getName()==null){
                User u=new User(name,phone,sex,age,keshi);
                try {
                    service.add(u);
                     Logger logger = Logger.getLogger(NewServlet.class);
        
        PropertyConfigurator.configure("F:\\log4j.properties");
           
 

         logger.info(name+ " " +phone +" " +sex+" "+age+" "+keshi+"");
                } catch (ClassNotFoundException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                response.sendRedirect(request.getContextPath()+"/Login_1.jsp");
            }else{
                request.setAttribute("guahao_err", "用户名已经存在，请重新注册！");
                request.getRequestDispatcher("guahao_1.jsp").forward(request, response);
            }
        }
    }else if(path.equals("/Login_1")){
            String name1=request.getParameter("name");
            String phone1=request.getParameter("phone");
            User user = null;
            System.out.print(name1);
          
       
            try {
                user = service.findByUser(name1);
            } catch (SQLException ex) {
                java.util.logging.Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                java.util.logging.Logger.getLogger(NewServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
       
           
           if(name1!=null&&phone1!=null){
            if(name1.equals(user.getName())&&phone1.equals(phone1)){
                 Logger loggers = Logger.getLogger(NewServlet.class);
        
        PropertyConfigurator.configure("F:\\LG.properties");
           
      

         loggers.info(name1+ " " +phone1+" " );
                HttpSession session=request.getSession();
                session.setAttribute("login",user);
                response.sendRedirect(request.getContextPath()+"/index1.jsp");
             }else{
            request.setAttribute("login_err","用户名或者密码错误");
              
               request.getRequestDispatcher("/Login_1.jsp").forward(request,response);
             }
           }else{
            request.setAttribute("login_err","用户名或者密码错误");
              
               request.getRequestDispatcher("/Login_1.jsp").forward(request,response);
             }
    }

     } 
 
}
