package controller;

import model.bean.SanPham;
import model.service.DanhMucService;
import model.service.Imp.DanhmucServiceImp;
import model.service.Imp.SanPhamServiceImp;
import model.service.SanPhamService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Servlet", urlPatterns = {"/sanpham"})
public class Servlet extends HttpServlet {
    private SanPhamService sanPhamService = new SanPhamServiceImp();
    private DanhMucService danhMucService = new DanhmucServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createSanPham(request, response);
                break;
            case "edit":
                editSanPham(request, response);
                break;
        }
    }

    private void createSanPham(HttpServletRequest request, HttpServletResponse response) {
        SanPham sanPham = null;
        String name = request.getParameter("ten");
        Double gia = Double.parseDouble(request.getParameter("gia"));
        int soluong = Integer.parseInt(request.getParameter("soluong"));
        String mausac = request.getParameter("mausac");
        String thongtin = request.getParameter("thongtin");
        String danhmuc = request.getParameter("danhmuc");

        sanPham = new SanPham(name, gia, soluong, mausac, thongtin, danhmuc);

        if (this.sanPhamService.createSanpham(sanPham)) {
            try {
                response.sendRedirect("/sanpham");
                request.setAttribute("msg", "them thanh cong");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        } else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("/sanpham").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void editSanPham(HttpServletRequest request, HttpServletResponse response) {
        SanPham sanPham = null;
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("ten");
        Double gia = Double.parseDouble(request.getParameter("gia"));
        int soluong = Integer.parseInt(request.getParameter("soluong"));
        String mausac = request.getParameter("mausac");
        String thongtin = request.getParameter("thongtin");
        String danhmuc = request.getParameter("danhmuc");
        sanPham = new SanPham(name, gia, soluong, mausac, thongtin, danhmuc);
        if (this.sanPhamService.editSanPham(sanPham)) {
            try {
                response.sendRedirect("/sanpham");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "edit":
                showEdit(request, response);
                break;
            case "delete":
                deleteSanPham(request, response);
                break;
            default:
                showList(request, response);
                break;
        }
    }

    private void showEdit(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("sanpham", this.sanPhamService.findById(id));
        request.setAttribute("danhmuc", this.danhMucService.getList());
        try {
            request.getRequestDispatcher("edit.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }

    private void deleteSanPham(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        if (this.sanPhamService.deleteSanPham(id)) {
            try {
                response.sendRedirect("/sanpham");
                request.setAttribute("msg", "xoa thanh cong");
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        } else {
            request.setAttribute("msg", "Can not");
            try {
                request.getRequestDispatcher("sanpham.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException exception) {
                exception.printStackTrace();
            }
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {

        request.setAttribute("sanPhamList", this.sanPhamService.getList());
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException exception) {
            exception.printStackTrace();
        }
    }
}
