<%@ Page Title="Ankita Beauty Parlor"  Language="C#" AutoEventWireup="true" CodeFile="ServiceSkinCare.aspx.cs" Inherits="ServiceSkinCare"  MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h1 class="col-md-12 col-lg-12 col-xs-12 col-sm-12 jumbotron container text-center " >
    SERVICES - Skin Care
</h1>
   
    <div class="container ">


        <div class="col-md-6 col-lg-6 col-sm-12 col-xs-12 mygridview">


            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="sevice" HeaderText="sevice" SortExpression="sevice" />
                    <asp:BoundField DataField="regular" HeaderText="regular" SortExpression="regular" />
                    <asp:BoundField DataField="offer" HeaderText="offer" SortExpression="offer" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [sskincare]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [sskincare] WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))" InsertCommand="INSERT INTO [sskincare] ([sevice], [regular], [offer]) VALUES (@sevice, @regular, @offer)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [sskincare] SET [sevice] = @sevice, [regular] = @regular, [offer] = @offer WHERE [Id] = @original_Id AND (([sevice] = @original_sevice) OR ([sevice] IS NULL AND @original_sevice IS NULL)) AND (([regular] = @original_regular) OR ([regular] IS NULL AND @original_regular IS NULL)) AND (([offer] = @original_offer) OR ([offer] IS NULL AND @original_offer IS NULL))">
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
        <div class="col-md-5 col-lg-6 col-sm-12 col-xs-12">

        </div>


    </div>
</asp:Content>
