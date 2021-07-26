<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPersonas.aspx.cs" Inherits="UF2218.AdminPersonas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GvPersonas" runat="server" AutoGenerateColumns="False" DataSourceID="PersonasDataSource" DataKeyNames="Id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
                    <asp:BoundField DataField="Calificacion" HeaderText="Calificacion" SortExpression="Calificacion" />
                </Columns>
                <EmptyDataTemplate>
                    No se han encontrado registros.
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:ObjectDataSource ID="PersonasDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerTodas" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar"></asp:ObjectDataSource>
            
        </div>
    </form>
</body>
</html>
