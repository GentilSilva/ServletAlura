package br.com.alura.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Usuario;

public class Login implements Acao{

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		System.out.println("Logando: " + login);
		
		Banco banco = new Banco();
		Usuario usuario = banco.existeUsuario(login, senha);
		
		if(usuario != null) {
			System.out.println("Usuario existe");
			
//			acessa o http session criado ao se logar o usuário e linka os dois para todos os serviços dentro do site. Para o usuario ser lembrado
			HttpSession sessao = request.getSession();
			
//			todo objeto dentro do request.setAttribute só vale por uma requisição --- Requisições são tratadas de forma independente(isolada) pelo Http
//			request.setAttribute("usuarioLogado", usuario);
			
			sessao.setAttribute("usuarioLogado", usuario);
			return "redirect:unicaEntrada?acao=ListaEmpresas"; 
			
		} else {
			System.out.println("Login não existente");
			return "redirect:unicaEntrada?acao=LoginForm";
		}
		 
		
	 }
		
		
}

	

