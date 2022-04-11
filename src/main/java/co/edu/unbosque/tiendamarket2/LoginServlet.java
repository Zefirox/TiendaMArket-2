package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.dtos.User;
import co.edu.unbosque.tiendamarket2.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.NoSuchElementException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    public void init() {}

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String path = "./accounts.csv";

        List<User> users = new UserService().getUsers(path).get();


        try{
            User userfound = users.stream().filter(user -> username.equals(user.getUsername())&&password.equals(user.getPassword())).findFirst().get();

            if(username.equals(userfound.getUsername())&&password.equals(userfound.getPassword())){
                if (userfound.getRole().equals("artista")){
                    RequestDispatcher dispatcher = request.getRequestDispatcher("homeArtista.jsp");
                    try {
                        dispatcher.forward(request,response);
                    } catch (ServletException e) {
                        e.printStackTrace();
                    }
                }
                if (userfound.getRole().equals("comprador")){
                    request.setAttribute("username",userfound.getUsername());
                    request.setAttribute("Fcoins",userfound.getFcoins());
                    RequestDispatcher dispatcher = request.getRequestDispatcher("homeComprador.jsp");
                    try {
                        dispatcher.forward(request,response);
                    } catch (ServletException e) {
                        e.printStackTrace();
                    }
                }
            }
        }catch (NoSuchElementException e){
            System.out.println("Unauthorized");
        }
    }

    public void destroy() {
    }
}