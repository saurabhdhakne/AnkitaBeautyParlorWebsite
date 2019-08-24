<%@ Page Language="C#" AutoEventWireup="true" CodeFile="itsadmin.aspx.cs" Inherits="itsadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>


  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 45px;
        }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    <div >
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <div class="col-md-3 col-lg-3 col-xs-0"></div>

    </div>

    <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12 jumbotron">

    &nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td>
                    <br />
                    Admin Login<br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    Username<br />
                </td>
                <td class="auto-style2">
                    <br />
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    Password<br />
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="Submit_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [admin]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>

    </form>
        </div>
</body>
</html>
