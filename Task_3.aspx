<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_3.aspx.cs" Inherits="Assignment_01.Task_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Algebraic Operations</h2>
            <p>Enter first number:</p>
            <asp:TextBox ID="txtFirstNumber" runat="server"></asp:TextBox>
            <p>Enter second number:</p>
            <asp:TextBox ID="txtSecondNumber" runat="server"></asp:TextBox>
            <p>Select operation:</p>
            <asp:DropDownList ID="ddlOperation" runat="server">
                <asp:ListItem Text="Add" Value="+" />
                <asp:ListItem Text="Subtract" Value="-" />
                <asp:ListItem Text="Multiply" Value="*" />
                <asp:ListItem Text="Divide" Value="/" />
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
            <br />
            <p>Result:</p>
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
