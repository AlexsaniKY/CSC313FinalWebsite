<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CSC313Final.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <%--<form id="searchForm" runat="server">--%>
        Search for Equipment<br />
        Name: &nbsp;
        <asp:TextBox ID="searchName" runat="server"></asp:TextBox>
        <br />
        Manufacturer: &nbsp;
        <asp:TextBox ID="searchManu" runat="server"></asp:TextBox>
        <br />
        Equipment Type: &nbsp;
        <asp:TextBox ID="searchEquip" runat="server"></asp:TextBox>
        <br />
        Battery Type: &nbsp;
        <asp:TextBox ID="searchBatt" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="searchButton" runat="server" OnClick="searchButton_Click" Text="Search" />
    <%--</form>--%>

    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
