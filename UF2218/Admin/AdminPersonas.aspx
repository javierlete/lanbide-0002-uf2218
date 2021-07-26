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
            <asp:FormView ID="FvPersonas" runat="server" DataSourceID="FormularioDataSource">
                <EditItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Apellidos:
                    <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                    <br />
                    FechaNacimiento:
                    <asp:TextBox ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento") %>' />
                    <br />
                    Calificacion:
                    <asp:TextBox ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Apellidos:
                    <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                    <br />
                    FechaNacimiento:
                    <asp:TextBox ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento") %>' />
                    <br />
                    Calificacion:
                    <asp:TextBox ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' />
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
                    FechaNacimiento:
                    <asp:Label ID="FechaNacimientoLabel" runat="server" Text='<%# Bind("FechaNacimiento") %>' />
                    <br />
                    Calificacion:
                    <asp:Label ID="CalificacionLabel" runat="server" Text='<%# Bind("Calificacion") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="FormularioDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerPorId" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GvPersonas" Name="id" PropertyName="SelectedValue" Type="Int64" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
