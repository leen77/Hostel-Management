<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewExpense.aspx.cs" Inherits="ProjectHMS.ViewExpense" MasterPageFile="~/Main1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #FFCC66;
        }
        .auto-style4 {
            color: #000000;
        }
        .auto-style5 {
            height: 15px;
        }
        .auto-style6 {
        width: 974px;
    }
        .auto-style7 {
            color: #000000;
            width: 974px;
        }
        .auto-style8 {
            height: 15px;
            width: 974px;
        }
        .auto-style9 {
            width: 974px;
            height: 56px;
        }
        .auto-style10 {
            height: 56px;
        }
        .auto-style11 {
            width: 974px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
    .auto-style13 {
        width: 557px;
    }
    .auto-style14 {
        height: 56px;
        width: 557px;
    }
    .auto-style15 {
        width: 557px;
        height: 15px;
    }
    .auto-style16 {
        height: 23px;
        width: 557px;
    }
    </style>
</head>
<body>
    
        <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/expenses-2013.png" />
                <strong>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#339966">Your Expense</asp:Label>
                <br class="auto-style2" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="Laundry Expense"></asp:Label>
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
            <td class="auto-style13">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Canteen Expense"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" ForeColor="#000099" Text="Total Laundry Expense:" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" >
                    <Columns>
                       <asp:BoundField DataField="total_items" HeaderText="Items" />
                              <asp:BoundField DataField="laundry_money" HeaderText="Money" />
                                <asp:BoundField DataField="laundry_date" HeaderText="Date" />
                        <%-- <asp:BoundField DataField="laundry_status" HeaderText="Status" />--%>
                              
                           </Columns>
                    <HeaderStyle BackColor="#0000CC" />
                </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="auto-style13">
                <asp:Label ID="Label5" runat="server" ForeColor="#000099" Text="Canteen Expense:" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Small"></asp:Label>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False">
                     <Columns>
                       <asp:BoundField DataField="item_name" HeaderText="Item" />
                              <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="item_money" HeaderText="Money" />
                               <asp:BoundField DataField="canteen_date" HeaderText="Date" />

                              
                           </Columns>
                     <HeaderStyle BackColor="#0000CC" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <br />
            </td>
            <td class="auto-style14">&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <br />
&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Penalty"></asp:Label>
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large" Text="Other Expense"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#003399" Text="Total Penalty:" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
                </strong></td>
            <td class="auto-style13">
                <asp:Label ID="Label7" runat="server" ForeColor="#0000CC" Text="Total Other Expense:" Font-Bold="True" Font-Size="Small"></asp:Label>
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                     <Columns>
                       <asp:BoundField DataField="penalty_subject" HeaderText="Subject" />
                              <asp:BoundField DataField="penalty_descrip" HeaderText="Description" />
                                <asp:BoundField DataField="penalty_money" HeaderText="Penalty" />
                               <asp:BoundField DataField="penalty_date" HeaderText="Date" />
                         <%--<asp:BoundField DataField="penalty_status" HeaderText="Status" />--%>

                              
                           </Columns>
                     <HeaderStyle BackColor="#0000CC" />
                </asp:GridView>
            </td>
            <td class="auto-style13">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False">
                     <Columns>
                       
                              <asp:BoundField DataField="expense_descrip" HeaderText="Description" />
                               <asp:BoundField DataField="expense_money" HeaderText="Expense" />
                               <asp:BoundField DataField="expense_date" HeaderText="Date" />
                         <%--<asp:BoundField DataField="expense_status" HeaderText="Status" />--%>

                     </Columns>
                     <HeaderStyle BackColor="#0000CC" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label9" runat="server" ForeColor="#0000CC" Text="Your Total Expense:" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style15"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style16"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
  
</body>
</html>
    </asp:Content>
