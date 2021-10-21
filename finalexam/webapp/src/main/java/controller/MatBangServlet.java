package controller;

import model.bean.MatBang.Matbang;
import model.service.LoaiMatbangService;
import model.service.MatBangService;
import model.service.TrangThaiService;
import model.service.imp.LoaiMatBangServiceImp;
import model.service.imp.MatBangServiceImp;
import model.service.imp.TrangThaiServiceImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MatBangServlet" ,urlPatterns = {"","/matbang"})
public class MatBangServlet extends HttpServlet {

    private final MatBangService matBangService = new MatBangServiceImp();
    private final LoaiMatbangService loaiMatbangService = new LoaiMatBangServiceImp();
    private final TrangThaiService trangThaiService = new TrangThaiServiceImp();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action) {
            case "create":
                create(request,response);
                break;
            default:
                showList(request,response);
                break;
        }
    }
    private void create(HttpServletRequest request, HttpServletResponse response) {
        Matbang matbang = null;
        List<Matbang> matbangList= this.matBangService.getList();
        int id = matbangList.size()+1;
        String idname=null;
        if(id<10){
            idname = "MB0"+ id ;
        }else {
            idname = "MB"+ id;
        }
        String name = request.getParameter("name");
        int dientich = Integer.parseInt(request.getParameter("dientich"));
        String loaimatbang = request.getParameter("loaimatbang");
        String trangthai = request.getParameter("trangthai");
        Double gia = Double.parseDouble(request.getParameter("gia"));
        String ngaybatdau = request.getParameter("ngaybatdau");
        String ngayketthuc = request.getParameter("ngayketthuc");

        matbang = new Matbang( idname,name, dientich, loaimatbang, trangthai, gia, ngaybatdau, ngayketthuc);

        if (this.matBangService.createCustomer(matbang)) {
            try {
                response.sendRedirect("/matbang");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        } else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("create.jsp").forward(request, response);
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
            case "delete":
                deleteCustomer(request,response);
                break;
            default:
                showList(request,response);
                break;
        }
    }

    private void showCreate(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("trangThai", this.trangThaiService.getList());
        request.setAttribute("loaiMatBang", this.loaiMatbangService.getList());

        try {
            request.getRequestDispatcher("create.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (this.matBangService.deleteCustomer(id)){
            try {
                response.sendRedirect("/matbang");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("listMatbang.jsp").forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        request.setAttribute("matBangList",this.matBangService.getList());
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("listMatBang.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

}
