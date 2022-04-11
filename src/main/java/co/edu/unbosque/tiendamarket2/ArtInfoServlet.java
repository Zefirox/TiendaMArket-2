package co.edu.unbosque.tiendamarket2;

import co.edu.unbosque.tiendamarket2.dtos.ArtPiece;
import co.edu.unbosque.tiendamarket2.services.ArtPieceService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ArtInfoServlet", value = "/artinfo")
public class ArtInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ArtPiece> artPieces = new ArtPieceService().getArtPiece().get();

        request.setAttribute("title",artPieces.get(0).getTitle());
        request.setAttribute("author",artPieces.get(0).getUsernamecreator());
        request.setAttribute("price",artPieces.get(0).getPrice());

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("explorarComprador.jsp");
        requestDispatcher.forward(request,response);
    }
}
