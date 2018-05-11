<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admingate.aspx.cs" Inherits="ProjectHMS.admingate" MasterPageFile="~/Admin.Master"%>
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
        .auto-style2 {
            height: 23px;
        }
    .auto-style6 {
        width: 113px;
        height: 23px;
    }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="gate_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                            <asp:BoundField DataField="gate_date" HeaderText="gate_date" SortExpression="gate_date" />
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                </td>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource1"
                        runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [GatePass]"></asp:SqlDataSource>
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="gate_id" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="gate_id" HeaderText="gate_id" SortExpression="gate_id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                            <asp:BoundField DataField="gate_reason" HeaderText="gate_reason" SortExpression="gate_reason" />
                            <asp:BoundField DataField="gate_date" HeaderText="gate_date" SortExpression="gate_date" />
                        </Fields>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:DetailsView>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [GatePass] WHERE ([gate_id] = @gate_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="gate_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Approve" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#009933" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Deny" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
  <%--  </form>--%>
</body>
</html>
</asp:Content>