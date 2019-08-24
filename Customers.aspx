<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
    <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
        <asp:Label ID="myUser" runat="server"></asp:Label>
    </div>
    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-6">
        <asp:Button ID="Button2" runat="server" Text="Admin Panel" CssClass="btn btn-success" OnClick="Button2_Click" />
    </div>
    <div class="col-md-3 col-lg-3 col-sm-6 col-xs-6">
        <asp:Button ID="Button1" runat="server" Text="logout" CssClass="btn btn-danger" OnClick="Button1_Click" />
    </div>
</div>
    <br />
    <br />
    <br />

    <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [name], [UserName], [mobile] FROM [AspNetUsers]"></asp:SqlDataSource>

    </div>
</asp:Content>

