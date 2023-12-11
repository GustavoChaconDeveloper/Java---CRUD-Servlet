<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <title>Alterar Aluno</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h2 class="text-center">Alteração de Aluno</h2>
        <jsp:useBean id="aluno" scope="session" class="br.edu.unicid.model.Aluno" />
        <%
            SimpleDateFormat data = new SimpleDateFormat("dd/MM/yyyy");
        %>
        <form action="ServletAluno?cmd=atualizar" method="post">
            <div class="form-group row">
                <label for="txtRa" class="col-sm-2 col-form-label">RA:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="60" class="form-control" name="txtRa" value="<%=aluno.getRa()%>" readonly="readonly" />
                </div>
            </div>
            <div class="form-group row">
                <label for="txtNome" class="col-sm-2 col-form-label">Nome:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="60" class="form-control" name="txtNome" value="<%=aluno.getNome()%>" />
                </div>
            </div>
            <div class="form-group row">
                <label for="txtEmail" class="col-sm-2 col-form-label">E-mail:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="60" class="form-control" name="txtEmail" value="<%=aluno.getEmail()%>" />
                </div>
            </div>
            <div class="form-group row">
                <label for="txtData" class="col-sm-2 col-form-label">Nascimento (dd/mm/aaaa):</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" name="txtData" value="<%=aluno.getDataNascimento()%>" required="required" />
                </div>
            </div>
            <div class="form-group row">
                <label for="txtEndereco" class="col-sm-2 col-form-label">Endereço:</label>
                <div class="col-sm-10">
                    <input type="text" maxlength="60" class="form-control" name="txtEndereco" value="<%=aluno.getEndereco()%>" />
                </div>
            </div>
            <div class="form-group row">
                <label for="cmbPeriodo" class="col-sm-2 col-form-label">Período:</label>
                <div class="col-sm-10">
                    <select class="form-control" name="cmbPeriodo">
                        <option><%=aluno.getPeriodo()%></option>
                        <option>Manhã</option>
                        <option>Tarde</option>
                        <option>Noite</option>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <button type="submit" class="btn btn-primary">Confirmar Atualização</button>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-12 text-center">
                    <a href="index.html" class="btn btn-secondary">Página Principal</a>
                </div>
            </div>
        </form>
    </div>

    <footer style="text-align: center; padding: 10px; background-color: #f8f9fa; margin-top: 20px; border-radius: 8px;">
        &copy; 2023 Todos os direitos reservados a Gustavo Chacon
    </footer>
</body>
</html>
