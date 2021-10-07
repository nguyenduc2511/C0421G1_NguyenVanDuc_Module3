import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float listPrince = Float.parseFloat(request.getParameter("listPrince"));
        float discountPercent = Float.parseFloat(request.getParameter("discountPercent"));
        float discountAmount = (float) (listPrince * discountPercent* 0.01);
        float discountPrince = listPrince - discountAmount;
        String description = request.getParameter("description");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h3>Product Description: " + description + "</h3>");
        writer.println("<h3>List Price: " + listPrince + "</h3>");
        writer.println("<h3>Discount Percent: " + discountPercent + "</h3>");
        writer.println("<h3>Discount Amount: " + discountAmount + "</h3>");
        writer.println("<h3>Discount Price: " + discountPrince + "</h3>");
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
