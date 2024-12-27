<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_1.aspx.cs" Inherits="Assignment_01.Task_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome!</h1>
        <p>Enter your name:</p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <asp:Label ID="lblWelcome" runat="server" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
