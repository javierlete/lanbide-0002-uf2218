﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPersonas.aspx.cs" Inherits="UF2218.AdminPersonas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <link rel="stylesheet" href="/Content/bootstrap.min.css" />
</head>
<body class="container">
    <form id="form1" runat="server">
        <div>
            <asp:GridView CssClass="table table-hover table-bordered table-striped" ID="GvPersonas" runat="server" AutoGenerateColumns="False" DataSourceID="PersonasDataSource" DataKeyNames="Id" OnSelectedIndexChanged="GvPersonas_SelectedIndexChanged" OnDataBinding="GvPersonas_DataBinding">
                <HeaderStyle CssClass="table-dark" />
                <Columns>
                    <%--<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />--%>
                    
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" DataFormatString="{0:dd-MM-yyyy}" SortExpression="FechaNacimiento" />
                    <asp:BoundField DataField="Calificacion" HeaderText="Calificacion" SortExpression="Calificacion" />

                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="EditButton"
                                runat="server"
                                CssClass="btn btn-primary"
                                CommandName="Edit"
                                Text="Modificar" />
                            <asp:LinkButton ID="SelectButton"
                                runat="server"
                                CssClass="btn btn-secondary"
                                CommandName="Select"
                                Text="Seleccionar" />
                            <asp:LinkButton ID="DeleteButton"
                                CssClass="btn btn-danger"
                                Text="Borrar"
                                CommandName="Delete"
                                runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="UpdateButton"
                                runat="server"
                                CssClass="btn btn-primary"
                                CommandName="Update"
                                Text="Modificar" />&nbsp;
                            <asp:LinkButton ID="Cancel"
                                runat="server"
                                CssClass="btn btn-danger"
                                CommandName="Cancel"
                                Text="Cancelar" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                <EmptyDataTemplate>
                    No se han encontrado registros.
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:ObjectDataSource ID="PersonasDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerTodas" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar"></asp:ObjectDataSource>
            <asp:FormView ID="FvPersonas" runat="server" DataSourceID="FormularioDataSource" DataKeyNames="Id">
                <EditItemTemplate>
                    Id:
                    <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Eval("Id") %>' ReadOnly="true" />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Apellidos:
                    <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                    <br />
                    FechaNacimiento:
                    <asp:TextBox ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento", "{0:yyyy-MM-dd}") %>' TextMode="Date" />
                    <br />
                    Calificacion:
                    <asp:TextBox ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' TextMode="Number" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="IdTextBox" runat="server" Text='0' ReadOnly="true" Visible="false" />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Apellidos:
                    <asp:TextBox ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                    <br />
                    FechaNacimiento:
                    <asp:TextBox ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento", "{0:yyyy-MM-dd}") %>' TextMode="Date" />
                    <br />
                    Calificacion:
                    <asp:TextBox ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' TextMode="Number" />
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
            <asp:ObjectDataSource ID="FormularioDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerPorId" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar" OnDeleted="RefrescarGvPersonas" OnInserted="RefrescarGvPersonas" OnUpdated="RefrescarGvPersonas">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GvPersonas" Name="id" PropertyName="SelectedValue" Type="Int64" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>

    <script src="/Scripts/bootstrap.bundle.min.js"></script>
</body>
</html>
