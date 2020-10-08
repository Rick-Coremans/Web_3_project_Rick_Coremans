package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        session = request.getSession();
        String password = request.getParameter("password");
        String userid = request.getParameter("userid");
        try {
            if (service.get(userid).isCorrectPassword(password)) {
                session.setAttribute("user", service.get(request.getParameter("userid")));
            }
            else {
                String error = "geef een valid userid en password";
                request.setAttribute("error", error);
            }
        }
        catch (Exception e) {
            String error = "geef een valid userid en password";
            request.setAttribute("error", error);
        }
        return "index.jsp";
    }
}
