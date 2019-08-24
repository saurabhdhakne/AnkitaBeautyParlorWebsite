<%@ Page Title="Ankita Beauty Parlor" Language="C#" AutoEventWireup="true" CodeFile="ServiceHairs.aspx.cs" Inherits="ServiceHairs" MasterPageFile="~/Site.Master"  %> 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h1 class="col-md-12 col-lg-12 col-xs-12 col-sm-12 jumbotron container text-center " >
    SERVICES - Hair
</h1>
   
    <div class="container ">

        <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12 mygridview">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="service" HeaderText="service" SortExpression="service" />
                    <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [shair]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [shair] WHERE [Id] = @original_Id AND (([service] = @original_service) OR ([service] IS NULL AND @original_service IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [shair] ([service], [regular], [offer]) VALUES (@service, @regular, @offer)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [shair] SET [service] = @service, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([service] = @original_service) OR ([service] IS NULL AND @original_service IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
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



    </div>
</asp:Content>
