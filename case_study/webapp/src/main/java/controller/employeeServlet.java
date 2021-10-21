package controller;


import model.service.EmployeeService;
import model.service.imp.EmployeeServiceImp;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "employeeServlet",urlPatterns = "/employee")
public class employeeServlet extends HttpServlet {
    private final EmployeeService employeeService = new EmployeeServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createEmployee(request, response);
                break;
            case "edit":
                editEmployee(request, response);
                break;
        }
    }

    private void createEmployee(HttpServletRequest request, HttpServletResponse response) {

    }

    private void editEmployee(HttpServletRequest request, HttpServletResponse response) {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreat(request, response);
                break;
            case "edit":
                showEdit(request, response);
                break;
            case "delete":
                deleteEmployee(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    private void showCreat(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) {

    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (this.employeeService.deleteEmployee(id)){
            try {
                response.sendRedirect("/employee");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("employee/employee.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void showList (HttpServletRequest request, HttpServletResponse response){
        request.setAttribute("employeeList",this.employeeService.getList());
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("employee/employee.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

}
