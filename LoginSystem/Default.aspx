<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LoginSystem.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-info">

    <div class="container d-flex align-items-center" style="height: 100vh">

        <form id="formlogin" runat="server" action="Default.aspx" class="col-md-4 offset-md-4 card">
            <h2 class="text-center mb-4 mt-4">Login</h2>
            <asp:Label ID="labelMessage" runat="server" Text=""></asp:Label>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Username:</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" id="username" name="username">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Password:</label>
                <div class="col-sm-8">
                    <input type="password" class="form-control" id="password" name="password">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-4 col-form-label"></label>
                <div class="col-sm-8">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                </div>
            </div>

        </form>

    </div>

    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
