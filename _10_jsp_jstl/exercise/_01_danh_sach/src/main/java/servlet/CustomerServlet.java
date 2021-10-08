package servlet;

import model.Customer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList();
        customers.add(new Customer("nguyen van a","03-02-2000","da nang","216853.jpg"));
        customers.add(new Customer("Đồng Chuột","1997-08-16","Hà Tĩnh","225733.jpg"));
        customers.add(new Customer("Đồng ha","1997-08-16","Hà Tĩnh","711367.jpg"));
        customers.add(new Customer("Đồng ngo","1997-08-16","Hà Tĩnh","711376.jpg"));

        request.setAttribute("CustomerServlet",customers);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
