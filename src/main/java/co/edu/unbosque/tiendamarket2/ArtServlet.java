package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.dtos.ArtPiece;
import co.edu.unbosque.tiendamarket2.services.ArtPieceService;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ArtServlet", value = "/art")
public class ArtServlet extends HttpServlet {
    private String UPLOAD_DIRECTORY = "arts";

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("application/json");

        String path = getServletContext().getRealPath("") + File.separator +UPLOAD_DIRECTORY;

        File uploadDir = new File(path);

        List<String> files = new ArrayList<String>();
        for (File file : uploadDir.listFiles()) {
            files.add(UPLOAD_DIRECTORY + File.separator + file.getName());
        }

        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(files));
    }
}
