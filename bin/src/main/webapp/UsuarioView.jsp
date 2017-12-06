<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="jpa.Usuario	"%>
<html>

  <head>
    <title>Professores</title>
  </head>

  <body>
    <h1>Professores</h1>
    <form>
      <table>
        <tr>
          <td>Matrícula</td>
          <td><input name="login"></td>
        </tr>
        <tr>
          <td>Nome:</td>
          <td><input name="nome"></td>
        </tr>
      </table>
      <button name="operacao" value="incluir">Incluir</button>
      <button name="operacao" value="excluir">Excluir</button>
      <button name="operacao" value="alterar">Alterar</button>
    </form>
    <b>${msg}</b>
    <hr>
    <table border="1">
      <tr>
        <th>Login</th>
        <th>Nome</th>
        <th>Ações</th>
      </tr>
      <%
      ArrayList<Usuario> usuarios =
        (ArrayList<Usuario>) request.getAttribute("usuarios");
      for (Usuario usuario : usuarios) {
      %>
      <tr>
        <td><%=usuario.getLogin()%></td>
        <td><%=usuario.getNome()%></td>
        <td><a href="login?operacao=excluir&login=<%=usuario.getLogin()%>">Excluir</a></td>
      </tr>
      <%}%>
    </table>
  </body>

</html>