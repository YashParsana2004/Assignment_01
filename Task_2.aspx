<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_2.aspx.cs" Inherits="Assignment_01.Task_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Enter temperature:</p>
        <asp:TextBox ID="txtTemperature" runat="server" Width="50px"></asp:TextBox>
        <asp:RadioButtonList ID="rblUnit" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblUnit_SelectedIndexChanged">
            <asp:ListItem Text="Fahrenheit" Value="F"></asp:ListItem>
            <asp:ListItem Text="Celsius" Value="C"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="lblConverted" runat="server" Text="Converted Temperature:"></asp:Label>
        <asp:Label ID="lblValue" runat="server"></asp:Label>
        <br />
        </div>
    </form>
</body>
</html>
