<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UF2218.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="get">
        <div>
            <%--<% for (int i = 1; i <= 6; i++)
                { %>
            <h1>Qué tal estamos <%=i%></h1>
            <% } %>--%>
        </div>
        <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
        <asp:Button ID="BtnSaludar" runat="server" OnClick="BtnSaludar_Click" Text="Saludar" />
        <asp:Button ID="BtnDespedir" runat="server" Text="Despedir" OnClick="BtnDespedir_Click" />
        <asp:Label ID="LblMensaje" runat="server" Text="Dime tu nombre para que te salude"></asp:Label>
        <br />
        <asp:CheckBox ID="CbMayusculas" runat="server" AutoPostBack="True" OnCheckedChanged="CbMayusculas_CheckedChanged" />
        <asp:Label ID="Label1" runat="server" Text="Mayúsculas"></asp:Label>
        <br />
        <asp:Calendar ID="CalFechaNacimiento" runat="server"></asp:Calendar>
    </form>
</body>
</html>
