<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="clase.aspx.cs" Inherits="quiz.vistas.clase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestión de Clases</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>CLASES </h1> 

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"></asp:GridView>

        <br />

        <label for="tClaseID">Clase ID:</label>
        <asp:TextBox ID="tClaseID" runat="server" Type="number"></asp:TextBox>

        <br />

        <label for="tEscuelaID">Escuela ID:</label>
        <asp:TextBox ID="tEscuelaID" runat="server" Type="number"></asp:TextBox>

        <br />

        <label for="tClassName">Nombre de la Clase:</label>
        <asp:TextBox ID="tClassName" runat="server"></asp:TextBox>

        <br />

        <label for="tClassDescription">Descripción:</label>
        <asp:TextBox ID="tClassDescription" runat="server"></asp:TextBox>

        <br />

        <asp:Button ID="bAgregar" runat="server" Text="AGREGAR" OnClick="bAgregar_Click" />
        <asp:Button ID="bBorrar" runat="server" Text="BORRAR"  />
        <asp:Button ID="bModificar" runat="server" Text="MODIFICAR" />
        <asp:Button ID="bMostrar" runat="server" Text="MOSTRAR"  />

    </form>
</body>
</html>