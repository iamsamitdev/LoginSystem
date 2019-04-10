<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="LoginSystem.Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Stock Backend</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Welcome.
                            <asp:Label ID="labelUser" runat="server"></asp:Label>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Profile</a>
                            <a class="dropdown-item" href="#">Setting</a>
                            <div class="dropdown-divider"></div>
                            <form id="Form1" runat="server">
                                <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn btn-block btn-danger" OnClick="btnLogout_Click" />
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="container mt-2">
        <div class="row">
            <div class="col-md-4">
                <div class="card-header">Menu</div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><a href="Member.aspx"><i class="fas fa-chart-line"></i> Dashboard</a></li>
                    <li class="list-group-item"><a href="Stock.aspx"><i class="fas fa-database"></i> Stock</a></li>
                    <li class="list-group-item"><a href="#"><i class="fas fa-shopping-cart"></i> Orders</a></li>
                    <li class="list-group-item"><a href="#"><i class="fas fa-tools"></i> Settings</a></li>
                    <li class="list-group-item"><a href="#"><i class="fas fa-user"></i> Users</a></li>
                </ul>
            </div>
            <div class="col-md-8">
                <div class="card-header">Stock</div>
                <table class="table table-bordered mt-2">
                    <thead>
                        <tr class="bg-primary">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th>Status</th>
                            <th>Manage</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Label ID="dataResult" runat="server" Text=""></asp:Label>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <script src="jquery/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
