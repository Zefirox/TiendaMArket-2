package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.dtos.User;
import co.edu.unbosque.tiendamarket2.services.ArtPieceService;
import co.edu.unbosque.tiendamarket2.services.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.*;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CreateArtServlet", value = "/createArt")
@MultipartConfig(fileSizeThreshold = 1024*1024,maxFileSize = 1024*1024*5,maxRequestSize = 1024*1024*5*5)
public class CreateArtServlet extends HttpServlet {

    public void init(){}

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String theAlphaNumericS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"+"0123456789"+"abcdefghijklmnopqrstuvwxyz";
        StringBuilder builder;

        builder = new StringBuilder(16);

        for (int m = 0; m < 16; m++) {
            int myindex = (int)(theAlphaNumericS.length() * Math.random());

            builder.append(theAlphaNumericS.charAt(myindex));
        }
        String fileName = builder.toString();

        String username = request.getParameter("username");
        String title = request.getParameter("title");
        String price = request.getParameter("price");

        String csvPath = getServletContext().getRealPath("") + File.separator + "WEB-INF/classes/"+"arts.csv";
        String uploadPath = getServletContext().getRealPath("") + File.separator+"arts";

        boolean createArt = new ArtPieceService().createArt(username,title,price,fileName,csvPath ).get();

        if (createArt){
            request.setAttribute("username",username);

            File uploadDir = new File(uploadPath);
            if(!uploadDir.exists()){uploadDir.mkdir();}

            Part part = request.getPart("image");
            String format = part.getSubmittedFileName().split("\\.")[1];
            part.write(uploadPath+File.separator+fileName+"."+format);
            RequestDispatcher dispatcher = request.getRequestDispatcher("homeArtista.jsp");
            System.out.println(request.getParameter("username"));
            dispatcher.forward(request,response);
        }
        else{
            System.out.println("Error");
        }
    }
}
