<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPersonas.aspx.cs" Inherits="UF2218.AdminPersonas" UnobtrusiveValidationMode="None" %>

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
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="true" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" DataFormatString="{0:dd-MM-yyyy}" SortExpression="FechaNacimiento" />
                    <asp:BoundField DataField="Calificacion" HeaderText="Calificacion" SortExpression="Calificacion" />

                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <%--<asp:LinkButton ID="EditButton"
                                runat="server"
                                CssClass="btn btn-primary"
                                CommandName="Edit"
                                Text="Modificar" />--%>
                            <asp:LinkButton ID="SelectButton"
                                runat="server"
                                CssClass="btn btn-primary"
                                CommandName="Select"
                                Text="Modificar" />
                            <asp:LinkButton ID="DeleteButton"
                                CssClass="btn btn-danger"
                                Text="Borrar"
                                CommandName="Delete"
                                runat="server" />
                        </ItemTemplate>
                        <%--<EditItemTemplate>
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
                        </EditItemTemplate>--%>
                    </asp:TemplateField>

                </Columns>
                <EmptyDataTemplate>
                    No se han encontrado registros.
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:ObjectDataSource ID="PersonasDataSource" runat="server" DataObjectTypeName="UF2218.Models.Persona" DeleteMethod="Borrar" InsertMethod="Insertar" SelectMethod="ObtenerTodas" TypeName="UF2218.Daos.PersonaDao" UpdateMethod="Modificar"></asp:ObjectDataSource>
            <asp:FormView RenderOuterTable="false" ID="FvPersonas" runat="server" DataSourceID="FormularioDataSource" DataKeyNames="Id">
                <EditItemTemplate>
                    <div class="row mb-3">
                        <asp:Label CssClass="col-sm-2 col-form-label" ID="LblIdTextBox" runat="server" Text="Id:" AssociatedControlID="IdTextBox"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="IdTextBox" runat="server" Text='<%# Eval("Id") %>' ReadOnly="true" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <asp:Label CssClass="col-sm-2 col-form-label" ID="LblNombre" runat="server" Text="Nombre:" AssociatedControlID="NombreTextBox"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-sm-2 col-form-label" ID="LblApellidos" runat="server" Text="Apellidos:" AssociatedControlID="ApellidosTextBox"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-4 col-md-2 col-form-label" ID="LblFechaNacimiento" runat="server" Text="Fecha de nacimiento:" AssociatedControlID="FechaNacimientoTextBox"></asp:Label>
                        <div class="col-8 col-md-10">
                            <asp:TextBox CssClass="form-control" ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento", "{0:yyyy-MM-dd}") %>' TextMode="Date" />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-4 col-sm-2 col-form-label" ID="LblCalificacion" runat="server" Text="Calificacion:" AssociatedControlID="CalificacionTextBox"></asp:Label>
                        <div class="col-8 col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' TextMode="Number" />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-sm-10 offset-sm-2">
                            <asp:LinkButton CssClass="btn btn-primary" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </div>
                    </div>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="IdTextBox" runat="server" Text='0' ReadOnly="true" Visible="false" />
                    <div class="row mb-3">
                        <asp:Label CssClass="col-sm-2 col-form-label" ID="LblNombre" runat="server" Text="Nombre:" AssociatedControlID="NombreTextBox"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Es obligatorio rellenar el nombre" ControlToValidate="NombreTextBox" Display="Dynamic" ValidationGroup="InsertarGroup"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-sm-2 col-form-label" ID="LblApellidos" runat="server" Text="Apellidos:" AssociatedControlID="ApellidosTextBox"></asp:Label>
                        <div class="col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="ApellidosTextBox" runat="server" Text='<%# Bind("Apellidos") %>' />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-4 col-md-2 col-form-label" ID="LblFechaNacimiento" runat="server" Text="Fecha de nacimiento:" AssociatedControlID="FechaNacimientoTextBox"></asp:Label>
                        <div class="col-8 col-md-10">
                            <asp:TextBox CssClass="form-control" ID="FechaNacimientoTextBox" runat="server" Text='<%# Bind("FechaNacimiento", "{0:yyyy-MM-dd}") %>' TextMode="Date" />
                            <asp:CompareValidator CssClass="text-danger" runat="server" Type="Date" ControlToValidate="FechaNacimientoTextBox" ValueToCompare="1900-1-1" Operator="GreaterThanEqual" ErrorMessage="La fecha de nacimiento no puede ser tan antigua" ValidationGroup="InsertarGroup" />
                        </div>
                    </div>

                    <div class="row mb-3">
                        <asp:Label CssClass="col-4 col-sm-2 col-form-label" ID="LblCalificacion" runat="server" Text="Calificacion:" AssociatedControlID="CalificacionTextBox"></asp:Label>
                        <div class="col-8 col-sm-10">
                            <asp:TextBox CssClass="form-control" ID="CalificacionTextBox" runat="server" Text='<%# Bind("Calificacion") %>' />
                            <asp:RangeValidator ID="RangeValidatorCalificacion" CssClass="text-danger" runat="server" Display="Dynamic" ControlToValidate="CalificacionTextBox" MaximumValue="10,00" MinimumValue="0,00" Type="Double" ErrorMessage="La calificación debe estar comprendida entre 0 y 10 inclusives" ValidationGroup="InsertarGroup" />
                            <asp:RequiredFieldValidator CssClass="text-danger" runat="server" Display="Dynamic" ControlToValidate="CalificacionTextBox" ErrorMessage="Es obligatorio rellenar la calificación" ValidationGroup="InsertarGroup" />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-sm-10 offset-sm-2">
                            <asp:LinkButton CssClass="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" ValidationGroup="InsertarGroup" />
                            &nbsp;<asp:LinkButton CssClass="btn btn-danger" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                        </div>
                    </div>

                    <asp:ValidationSummary CssClass="text-danger" runat="server" ValidationGroup="InsertarGroup" />

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
