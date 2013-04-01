<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="proddetails.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="./css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_Products %>" 
            DeleteCommand="DELETE FROM [ProductFacts] WHERE [prodID] = @prodID" 
            InsertCommand="INSERT INTO [ProductFacts] ([prodCode], [prodName], [prodBrand], [prodCategory], [prodDescription], [prodColor]) VALUES (@prodCode, @prodName, @prodBrand, @prodCategory, @prodDescription, @prodColor)" 
            SelectCommand="SELECT * FROM [ProductFacts] WHERE ([prodID] = @prodID)" 
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
            <SelectParameters>
                <asp:QueryStringParameter Name="prodID" QueryStringField="prodID" 
                    Type="Int32" />
            </SelectParameters>
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
         <br />
        <a href="default.aspx">Go back Home!</a>
        <br />
        <a href="newproducts.aspx">Add new product!</a>
        <br />
        <a href="products.aspx">Product overview</a>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="prodID" DataSourceID="SqlDataSource1" Height="50px" Width="340px">
            <Fields>
                <asp:BoundField DataField="prodName" HeaderText="Model" 
                    SortExpression="prodName" />
                <asp:BoundField DataField="prodBrand" HeaderText="Brand" 
                    SortExpression="prodBrand" />
                <asp:BoundField DataField="prodCategory" HeaderText="Category" 
                    SortExpression="prodCategory" />
                <asp:BoundField DataField="prodDescription" HeaderText="Info" 
                    SortExpression="prodDescription" />
                <asp:BoundField DataField="prodColor" HeaderText="Color" 
                    SortExpression="prodColor" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
