<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="usergate.aspx.cs" Inherits="ProjectHMS.usergate" MasterPageFile="~/Main1.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style6 {
        width: 204px;
    }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="Gate Pass Reason :" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Gate Pass Date :" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   <%-- </form>--%>
</body>
</html>
</asp:Content>