<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ProjectHMS.User" MasterPageFile="~/Main1.Master" %>
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
        .auto-style3 {
            height: 115px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            height: 35px;
        }
        .auto-style6 {
            height: 37px;
        }
        .auto-style7 {
            height: 44px;
        }
        .auto-style8 {
            width: 215px;
        }
        .auto-style9 {
            height: 44px;
            width: 215px;
        }
        .auto-style10 {
            height: 143px;
            width: 215px;
        }
        .auto-style11 {
            height: 33px;
            width: 215px;
        }
        .auto-style12 {
            height: 35px;
            width: 215px;
        }
        .auto-style13 {
            height: 37px;
            width: 215px;
        }
        .auto-style15 {
            height: 63px;
        }
        .auto-style16 {
            height: 63px;
            width: 215px;
        }
        .auto-style17 {
            height: 51px;
        }
        .auto-style18 {
            height: 51px;
            width: 215px;
        }
        .auto-style19 {
            height: 61px;
        }
        .auto-style20 {
            height: 61px;
            width: 215px;
        }
        .auto-style21 {
            width: 89px;
        }
        .auto-style22 {
            height: 44px;
            width: 89px;
        }
        .auto-style23 {
            width: 89px;
            height: 143px;
        }
        .auto-style24 {
            width: 89px;
            height: 33px;
        }
        .auto-style25 {
            width: 89px;
            height: 35px;
        }
        .auto-style26 {
            height: 37px;
            width: 89px;
        }
        .auto-style27 {
            height: 63px;
            width: 89px;
        }
        .auto-style28 {
            height: 51px;
            width: 89px;
        }
        .auto-style29 {
            height: 61px;
            width: 89px;
        }
        .auto-style30 {
            width: 58px;
            height: 143px;
        }
        .auto-style31 {
            width: 39px;
            height: 33px;
        }
    </style>
</head>
<body>
    
    <table class="auto-style1">
        <tr>
            <td>
                <h2><strong>&nbsp;</strong></h2>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0000CC" Text="Welcome"></asp:Label>
            </td>
            <td>
                    <asp:LoginName ID="LoginName1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0000CC" />
                </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl="~/ChangePassword.aspx" Font-Bold="True" Font-Size="Large">Change Password</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Image ID="Image1" Width="150" Height="150" runat="server" />
                <br />
                <br />
                <br />
            </td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style7"></td>
            <td class="auto-style22"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td><h2>Personal Details</h2><br />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/notice-corner.jpg" PostBackUrl="ViewNotice.aspx" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/complaint.jpg" PostBackUrl="~/SendComplaint.aspx" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Name:" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Sem:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Branch:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <br />
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30">
                &nbsp;</td>
            <td class="auto-style30"></td>
            <td class="auto-style23"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
            <td class="auto-style30"></td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label3" runat="server" Text="DOB:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style11">
                </td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style24"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
            <td class="auto-style31"></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Email:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style25"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Mobile:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/book.png" PostBackUrl="~/ViewBook.aspx" />
            </td>
            <td class="auto-style6"></td>
            <td class="auto-style26"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label6" runat="server" Text="Address:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style27"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:Label ID="Label7" runat="server" Text="City:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style18"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style28"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
            <td class="auto-style17"></td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label8" runat="server" Text="State:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
            </td>
            <td class="auto-style20"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19"></td>
            <td class="auto-style29"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <br />
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
  
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
</asp:Content>