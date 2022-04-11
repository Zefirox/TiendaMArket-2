package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.dtos.User;
import co.edu.unbosque.tiendamarket2.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FcoinServlet", value = "/fcoin")
public class FcoinServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String fcoins = request.getParameter("fcoins");
        String userspath = "./accounts.csv";

        String path = getServletContext().getRealPath("") + File.separator + "WEB-INF/classes/" + "accounts.csv";

        List<User> users = new UserService().getUsers(userspath).get();
        User userfound = users.stream().filter(user-> username.equals(user.getUsername())).findFirst().get();
        String newfcoins = String.valueOf(Integer.parseInt(userfound.getFcoins())+Integer.parseInt(fcoins));


        boolean update = new UserService().loadFcoins(username,path,newfcoins).get();

        if(update){
            request.setAttribute("username",username);
            request.setAttribute("Fcoins",newfcoins);
            RequestDispatcher dispatcher = request.getRequestDispatcher("homeComprador.jsp");
            dispatcher.forward(request,response);
        }else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("FCoins.jsp");
        }
    }
}
