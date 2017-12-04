package jpa;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private String valor(HttpServletRequest req, String param, String padrao) {
		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		try {
			String msg;
			String op = valor(req, "operacao", "");
			String login = valor(req, "login", "");
			String senha = valor(req, "senha", "");
				
			String pagina = "login.jsp";
			
			if (op.equals("logar")) {
				
				
				if(UsuarioDao.PesquisarLogin(login, senha)){
					
					pagina = "logado.jsp";
					msg = "Bem Vindo!";
				}
				else {
					pagina ="login.jsp";	
					msg = "Usuário ou Senha incorretos!";
				}

			}else if (op.equals("alterar")) {
				UsuarioDao.AlterarSenha(login, senha);
				msg = "Alteração realizada com sucesso.";
				
			}else if (op.equals("")) {
				
				msg = "";
			} else {
				throw new IllegalArgumentException("Operação \"" + op + "\" não suportada.");
			}
			req.setAttribute("msg", msg);
			req.getRequestDispatcher(pagina).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace(resp.getWriter());
		}
	}
}
