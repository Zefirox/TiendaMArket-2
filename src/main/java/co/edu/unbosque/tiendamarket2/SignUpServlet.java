package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "SignUpServlet", value = "/signup")
public class SignUpServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String name = request.getParameter("name");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");
        String fcoins = "0";

        String path = getServletContext().getRealPath("") + File.separator + "WEB-INF/classes/" + "accounts.csv";
        boolean signup = new UserService().createUser(name,lastname,username,password,role,fcoins,path).get();

        if(signup){
            if (role.equals("artista")){
                try{
                    RequestDispatcher dispatcher = request.getRequestDispatcher("homeArtista.jsp");
                    dispatcher.forward(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            }
            if (role.equals("comprador")){
                request.setAttribute("username",username);
                request.setAttribute("Fcoins",fcoins);
                try{
                    RequestDispatcher dispatcher = request.getRequestDispatcher("homeComprador.jsp");
                    dispatcher.forward(request,response);
                } catch (ServletException e) {
                    e.printStackTrace();
                }
            }
        }
        else{
            System.out.println("Error");
        }
    }
}
