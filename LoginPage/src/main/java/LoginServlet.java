import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
 import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String correctUsername = "admin";
        String correctPassword = "password";

        if (username.equals(correctUsername) && password.equals(correctPassword)) {
            out.println("<h1>Hello, " + username + "!</h1>");
        } else {
            out.println("<h1>Login failed!</h1>");
        }

        out.close();
    }
}