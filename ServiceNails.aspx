<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ServiceNails.aspx.cs" Inherits="ServiceNails"  MasterPageFile="~/Site.Master"  %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h1 class="col-md-12 col-lg-12 col-xs-12 col-sm-12 jumbotron container text-center " >
    SERVICES - Nails</h1>
   
    <div class="container ">


        <div class="col-md-6 col-lg-6 col-xs-12 col-sm-12 mygridview" >
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="sevice" HeaderText="sevice" SortExpression="sevice" />
                    <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [snail]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [snail] WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [snail] ([sevice], [regular], [offer]) VALUES (@sevice, @regular, @offer)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [snail] SET [sevice] = @sevice, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
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



    </div>
</asp:Content>
