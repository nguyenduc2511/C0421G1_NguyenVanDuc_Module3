package controller;

import model.bean.Customer.Customer;
import model.service.CustomerService;
import model.service.CustomerTypeService;
import model.service.imp.CustomerServiceImp;
import model.service.imp.CustomerTypeServiceImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private final CustomerService customerService = new CustomerServiceImp();
    private final CustomerTypeService customerTypeService = new CustomerTypeServiceImp();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action) {
            case "create":
                create(request,response);
                break;
            case"edit":
                edit(request,response);
                break;
            default:
                showList(request,response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        Customer customer = null;

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("nameCustomer");
        String birthDay = request.getParameter("birthDay");
        String idCard = request.getParameter("idCard");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String phone = request.getParameter("phone");
        String mail = request.getParameter("mail");
        String address = request.getParameter("address");
        String customerType = request.getParameter("customerType");

        customer = new Customer(id, name, birthDay, gender, idCard, phone, mail, address, customerType);
        if (this.customerService.editCustomer(customer)) {
            try {
                response.sendRedirect("/customer");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        } else {
            request.setAttribute("customer", this.customerService.findById(id));
            request.setAttribute("customerType", this.customerTypeService.getList());
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("customer/edit.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void create(HttpServletRequest request, HttpServletResponse response) {
        Customer customer = null;
        String name = request.getParameter("nameCustomer");
        String birthDay = request.getParameter("birthDay");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idCard");
        String phone = request.getParameter("phone");
        String mail = request.getParameter("mail");
        String address = request.getParameter("address");
        String customerType = request.getParameter("customerType");

        customer = new Customer(name, birthDay, gender, idCard, phone, mail, address, customerType);

        if (this.customerService.createCustomer(customer)) {
            try {
                response.sendRedirect("/customer");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        } else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("customer/create.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreate(request,response);
                break;
            case "edit":
                showEdit(request,response);
                break;
            case "delete":
                  deleteCustomer(request,response);
                break;
            default:
                showList(request,response);
                break;
        }
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("customerType", this.customerTypeService.getList());
        try {
            request.getRequestDispatcher("customer/create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));

        request.setAttribute("customer", this.customerService.findById(id));
        request.setAttribute("customerType", this.customerTypeService.getList());
        try {
            request.getRequestDispatcher("customer/edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
    int id = Integer.parseInt(request.getParameter("id"));
        if (this.customerService.deleteCustomer(id)){
            try {
                response.sendRedirect("/customer");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("customer/listCustomer.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("customerList",this.customerService.getList());
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer/listCustomer.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }


}
