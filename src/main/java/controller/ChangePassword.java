package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ChangePassword extends RequestHandler{
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        String newPassword = request.getParameter("nieuwpassword");
        String oldPassword = request.getParameter("oudpassword");
        String userid = request.getParameter("userid");
       // try {
            if (service.get(userid).isCorrectPassword(oldPassword)) {
                service.get(userid).setPassword(newPassword);
            }
      /*  }
        catch (Exception e) {
            String error = "geef een valid userid en password";
            request.setAttribute("error", error);
        } */

        return "index.jsp";
    }
}
