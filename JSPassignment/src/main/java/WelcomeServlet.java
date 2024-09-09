import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WelcomeServlet")
public class WelcomeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String captchaInput = request.getParameter("captchaInput");

       String captcha = (String) request.getSession().getAttribute("captcha");

        if (username.equals("admin") && password.equals("password") && captcha.equals(captchaInput)) {
        	request.getSession().setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
        	PrintWriter out = response.getWriter();
        	out.println("<h2>Incorrect captcha!</h2>");
        }
    }
}