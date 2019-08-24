<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iamadmin.aspx.cs" MasterPageFile="~/Site.Master" Inherits="iamadmin" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h1 class="col-md-12 col-lg-12 col-xs-12 col-sm-12 jumbotron container text-center " >
    Admin Management
</h1>
   
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12">
            <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>

        </div>
        <div class="col-md-3 col-lg-3 col-xs-6 col-sm-6">
            <asp:Button ID="Button1" runat="server" Text="Customers" CssClass="btn btn danger" OnClick="Button1_Click" />
        </div>
        
        
        <div class="col-md-3 col-lg-3 col-xs-6 col-sm-6">
            <asp:Button ID="Button2" runat="server" Text="Logout" CssClass="btn btn danger" OnClick="Button2_Click" />

        </div>

    </div>
    <div class="container ">

        <br />
        <br />
        <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 mygridview ">
        
            <h2 class=" ">Skin Care</h2>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="sevice" HeaderText="sevice" SortExpression="sevice" />
                    <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [sskincare] WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [sskincare] ([sevice], [regular], [offer]) VALUES (@sevice, @regular, @offer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [sskincare]" UpdateCommand="UPDATE [sskincare] SET [sevice] = @sevice, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_sevice" Type="String" />
                    <asp:Parameter Name="original_regular" Type="Int32" />
                    <asp:Parameter Name="original_offer" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sevice" Type="String" />
                    <asp:Parameter Name="regular" Type="Int32" />
                    <asp:Parameter Name="offer" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sevice" Type="String" />
                    <asp:Parameter Name="regular" Type="Int32" />
                    <asp:Parameter Name="offer" Type="Int32" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_sevice" Type="String" />
                    <asp:Parameter Name="original_regular" Type="Int32" />
                    <asp:Parameter Name="original_offer" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <hr />
    <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12 mygridview ">
        
            <h2 class="">Nails</h2>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="sevice" HeaderText="sevice" SortExpression="sevice" />
                <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [snail] WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [snail] ([sevice], [regular], [offer]) VALUES (@sevice, @regular, @offer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [snail]" UpdateCommand="UPDATE [snail] SET [sevice] = @sevice, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_sevice" Type="String" />
                <asp:Parameter Name="original_regular" Type="Int32" />
                <asp:Parameter Name="original_offer" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sevice" Type="String" />
                <asp:Parameter Name="regular" Type="Int32" />
                <asp:Parameter Name="offer" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="sevice" Type="String" />
                <asp:Parameter Name="regular" Type="Int32" />
                <asp:Parameter Name="offer" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_sevice" Type="String" />
                <asp:Parameter Name="original_regular" Type="Int32" />
                <asp:Parameter Name="original_offer" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        <hr />
           <h2 class="">Hairs</h2>
        <asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="service" HeaderText="service" SortExpression="service" />
                <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [shair] WHERE [Id] = @original_Id AND (([service] = @original_service) OR ([service] IS NULL AND @original_service IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [shair] ([service], [regular], [offer]) VALUES (@service, @regular, @offer)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [shair]" UpdateCommand="UPDATE [shair] SET [service] = @service, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([service] = @original_service) OR ([service] IS NULL AND @original_service IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_service" Type="String" />
                <asp:Parameter Name="original_regular" Type="Int32" />
                <asp:Parameter Name="original_offer" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="service" Type="String" />
                <asp:Parameter Name="regular" Type="Int32" />
                <asp:Parameter Name="offer" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="service" Type="String" />
                <asp:Parameter Name="regular" Type="Int32" />
                <asp:Parameter Name="offer" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_service" Type="String" />
                <asp:Parameter Name="original_regular" Type="Int32" />
                <asp:Parameter Name="original_offer" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
    </div>
        <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">

            <br />
            <br />

        </div>
    </div>
</asp:Content>
