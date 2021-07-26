<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EjemploControles.aspx.cs" Inherits="UF2218.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
        <asp:Table ID="Table1" runat="server">
            <asp:TableHeaderRow></asp:TableHeaderRow>
            <asp:TableRow>
                <asp:TableCell>
                    Prueba
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:GridView ID="GvListado" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="PersonasDataSource" DataKeyNames="Id" OnSelectedIndexChanged="GvListado_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
            </Columns>
        </asp:GridView>
        <asp:LinkButton ID="LbAgregar" runat="server" OnClick="LbAgregar_Click">Añadir</asp:LinkButton>
        <asp:FormView ID="FvPersona" runat="server" DataKeyNames="Id" DataSourceID="PersonaDataSource" DefaultMode="Insert">
            <EditItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Eval("Id") %>' ReadOnly='true' />
                <br />
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Apellidos:
                <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <HeaderTemplate>
                Edición de persona
            </HeaderTemplate>
            <InsertItemTemplate>
                Id:
                <asp:TextBox ID="IdTextBox" runat="server" Text='0' ReadOnly="true" />
                <br />
                Nombre:
                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Apellidos:
                <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Bind("Id") %>' />
                <br />
                Nombre:
                <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                <br />
                Apellidos:
                <asp:Label ID="ApellidosLabel" runat="server" Text='<%# Bind("Apellidos") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="PersonaDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" OnInserted="RefrescarRejilla" SelectMethod="ObtenerPorId" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar" OnDeleted="RefrescarRejilla" OnUpdated="RefrescarRejilla">
            <SelectParameters>
                <asp:ControlParameter ControlID="GvListado" Name="id" PropertyName="SelectedValue" Type="Int64" DefaultValue="" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="PersonasDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerTodas" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int64" />
            </DeleteParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
