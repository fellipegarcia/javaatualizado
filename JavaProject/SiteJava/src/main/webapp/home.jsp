<!DOCTYPE html>

<%@page import="java.util.List" %>
<%@page import="modelo.Usuario" %>

<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/home.css">
    <title>Botafogo Store | Time To Set Fire!</title>
</head>

<body>

    <Header>
        <nav>

            <div class="boxtop">
                <h5> SOCIO CAMISA7 DISPONIBILZA DESCONTOS EXCLUSIVOS! CONFIRA!</h5>
                <h4><a href="LogoutServlet" style="text-decoration: none; color: #ffffff"> Sign Out </a></h4>
            </div>

            <div id="menu">

                <div class="botafogo">

                    <a href="home.html"> <img src="img/botafogo_branca.png" alt="banner botafogo store"> </a>

                </div>
                <div class="list">
                    <ul>
                        <li> <a href="#" target="_blank"
                                style="color: #FFFFFF; text-decoration: none;">ACESSORIOS</a> </li>
                        <li> <a href="#" target="_blank" style="color: #FFFFFF; text-decoration: none;">FEMININO</a> </li>
                        <li> <a href="#" target="_blank" style="color: #FFFFFF; text-decoration: none;">MASCULINO </a> </li>
                        <li> <a href="#" target="_blank" style="color: #FFFFFF; text-decoration: none;">INFANTIL </a> </li>
                        <li> <a href="#" target="_blank" style="color: #FFFFFF; text-decoration: none;">DESCONTOS 7FIRE </a> </li>

                    </ul>
                </div>
          
            </div>

        </nav>


    </Header>

    <main id="retro">

        <div>
            <img src="img/70_banner638103226450340103.png" alt="banner" height="auto" width="100%">
        </div>

        <div class="uniretro">

            <h2>★★★★★★★★★★★★★★ UNIFORMES RETRO ★★★★★★★★★★★★★★</h2>

        </div>
        
        <%
        	List<Usuario> lista = (List<Usuario>)session.getAttribute("lista");
        %>
        
        <table border = "1" style="display: flex; justify-content:center;  text-align: center;">
    <tr>
        <td>USUARIO</td>
        <td>NOME</td>
        <td>SENHA</td>
		<td>EMAIL</td>       
    </tr>
    
    <%
    
    	for(Usuario usuario: lista){
    		out.write("<tr>");
    		out.write("<td>" + usuario.getUsuario() + "</td>");
    		out.write("<td>" + usuario.getNome() + "</td>");
    		out.write("<td>" + usuario.getSenha() + "</td>");
    		out.write("<td>" + usuario.getEmail() + "</td>");
    		out.write("</tr>");
    }
    
    %>
    
</table>

    </main>

</body>

</html>