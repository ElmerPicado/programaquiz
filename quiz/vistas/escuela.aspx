<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="escuela.aspx.cs" Inherits="quiz.quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="../css_login/loginEquipo.css" rel="stylesheet" />
   
   <title>Gestión de Escuelas</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>ESCUELA </h1> 

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"></asp:GridView>

        <br />

        <label for="tescuela">Escuela ID:</label>
        <asp:TextBox ID="tEscuelaID" runat="server" Type="number"></asp:TextBox>

        <br />

        <label for="tSchoolName">Nombre de la Escuela:</label>
        <asp:TextBox ID="tSchoolName" runat="server"></asp:TextBox>

        <br />

        <label for="tDescription">Descripción:</label>
        <asp:TextBox ID="tDescription" runat="server"></asp:TextBox>

        <br />

        <label for="tAddress">Dirección:</label>
        <asp:TextBox ID="tAddress" runat="server"></asp:TextBox>

        <br />

        <label for="tPhone">Teléfono:</label>
        <asp:TextBox ID="tPhone" runat="server"></asp:TextBox>

        <br />

        <label for="tPostCode">Código Postal:</label>
        <asp:TextBox ID="tPostCode" runat="server"></asp:TextBox>

        <br />

        <label for="tPostAddress">Dirección Postal:</label>
        <asp:TextBox ID="tPostAddress" runat="server"></asp:TextBox>

        <br />

        <asp:Button ID="bAgregar" runat="server" Text="AGREGAR"  />
        <asp:Button ID="bBorrar" runat="server" Text="BORRAR" />
        <asp:Button ID="bModificar" runat="server" Text="MODIFICAR"  />
        <asp:Button ID="bMostrar" runat="server" Text="MOSTRAR"  />

    </form>
</body>
</html>