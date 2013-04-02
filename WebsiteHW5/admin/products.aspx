<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="products.aspx.vb" Inherits="admin_products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:SqlDataSource ID="ProdDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_Products %>" 
            DeleteCommand="DELETE FROM [ProductFacts] WHERE [prodID] = @prodID" 
            InsertCommand="INSERT INTO [ProductFacts] ([prodCode], [prodName], [prodBrand], [prodCategory], [prodDescription], [prodColor]) VALUES (@prodCode, @prodName, @prodBrand, @prodCategory, @prodDescription, @prodColor)" 
            SelectCommand="SELECT * FROM [ProductFacts]" 
            UpdateCommand="UPDATE [ProductFacts] SET [prodCode] = @prodCode, [prodName] = @prodName, [prodBrand] = @prodBrand, [prodCategory] = @prodCategory, [prodDescription] = @prodDescription, [prodColor] = @prodColor WHERE [prodID] = @prodID">
            <DeleteParameters>
                <asp:Parameter Name="prodID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="prodCode" Type="Int32" />
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="prodBrand" Type="String" />
                <asp:Parameter Name="prodCategory" Type="String" />
                <asp:Parameter Name="prodDescription" Type="String" />
                <asp:Parameter Name="prodColor" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="prodCode" Type="Int32" />
                <asp:Parameter Name="prodName" Type="String" />
                <asp:Parameter Name="prodBrand" Type="String" />
                <asp:Parameter Name="prodCategory" Type="String" />
                <asp:Parameter Name="prodDescription" Type="String" />
                <asp:Parameter Name="prodColor" Type="String" />
                <asp:Parameter Name="prodID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <a href="default.aspx">Go back Home!</a>
        <br />
        <a href="newproducts.aspx">Add new product!</a>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="prodID" 
            DataSourceID="ProdDataSource" Width="718px" PageSize="5">
            <Columns>
                <asp:BoundField DataField="prodName" HeaderText="Model" 
                    SortExpression="prodName" />
                <asp:BoundField DataField="prodBrand" HeaderText="Brand" 
                    SortExpression="prodBrand" />
                <asp:HyperLinkField DataNavigateUrlFields="prodID" 
                    DataNavigateUrlFormatString="proddetails.aspx?prodID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
</asp:Content>

