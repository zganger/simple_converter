<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unit Converter</title>
    <style type="text/css">
        .auto-style1 {
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center><table><tr><td colspan="2">
    <h1 style="text-align: center;">Unit Conversion</h1></tr>
        <tr>
            <td colspan="2"><asp:TextBox ID="num1" runat="server"></asp:TextBox><asp:DropDownList ID="fromList" runat="server"></asp:DropDownList> = <asp:TextBox ID="num2" runat="server" ReadOnly="True"></asp:TextBox><asp:DropDownList ID="toList" runat="server"></asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center; padding-top:25px;">
                <asp:Button ID="Convert" runat="server" Text="Convert" OnClick="Convert_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center; padding-top:25px;" class="auto-style1"><asp:TextBox ID="ErrorBox" runat="server" style="text-align:center" Visible="False" ReadOnly="True" Width="346px"></asp:TextBox></td>
        </tr>
    </table></center>
    </form>
</body>
</html>
