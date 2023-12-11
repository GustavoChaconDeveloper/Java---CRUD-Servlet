<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="br.edu.unicid.model.Aluno" %>
    
<!DOCTYPE html>
<html>
<head>
<title>Lista Alunos</title>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
    /* Estilos personalizados para a tabela */
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid #ccc;
    }

    th {
        background-color: #333;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    /* Estilo para o botão de exclusão */
    .delete-button {
        border: none;
        background: none;
        cursor: pointer;
    }
</style>
</head>
<body>
    <center>
        <table>
            <tr>
                <th colspan="7"><h3>Lista de Alunos</h3></th>
            </tr>
            <tr>
                <th>ID - Atualizar</th>
                <th>Nome</th>
                <th>Endereço</th>
                <th>E-mail</th>
                <th>Nascimento</th>
                <th>Período</th>
                <th>Funções</th>
            </tr>
            <%
                SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
                List<Aluno> lista = new ArrayList<Aluno>();
                lista = (ArrayList) request.getAttribute("alunosList");
                for(Aluno a: lista ){%>
                <tr>
                    <td><%=a.getRa()%></td>
                    <td><%=a.getNome()%></td>
                    <td><%=a.getEndereco()%></td>
                    <td><%=a.getEmail()%></td>
                    <td><%=data.format(a.getDataNascimento())%></td>
                    <td><%=a.getPeriodo()%></td>
                    <td>
                        <button class="delete-button" onclick="window.location.href='ServletAluno?cmd=exc&txtRa=<%=a.getRa()%>'">
                            <img src="https://cdn-icons-png.flaticon.com/512/3334/3334328.png" alt="Excluir" style="max-width: 32px; max-height: 32px;">
                        </button>
                        | <button class="delete-button" onclick="window.location.href='ServletAluno?cmd=con&txtRa=<%=a.getRa()%>'">
                            <img src="https://cdn-icons-png.flaticon.com/512/4277/4277132.png" alt="Excluir" style="max-width: 30px; max-height: 30px;">
                        </button>
                    </td>
                </tr>
            <%
                }
            %>
            <tr>
                <td colspan="7" align="center"><a href="index.html">Página Principal</a></td>
            </tr>    
        </table>
    </center>

    <footer style="text-align: center; padding: 10px; background-color: #f8f9fa; margin-top: 20px; border-radius: 8px;">
        &copy; 2023 Todos os direitos reservados a Gustavo Chacon
    </footer>
</body>
</html>
