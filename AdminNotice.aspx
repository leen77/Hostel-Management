<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminNotice.aspx.cs" Inherits="ProjectHMS.AdminNotice" MasterPageFile="~/Admin.Master"%>
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
            height: 30px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Notice Subject:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Notice Description :" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                </td>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Notice" />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#339933"></asp:Label>
                </td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="notice_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="notice_sub" HeaderText="notice_sub" SortExpression="notice_sub" />
                            <asp:BoundField DataField="notice_date" HeaderText="notice_date" SortExpression="notice_date" />
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Notice]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" OnItemUpdated="DetailsView1_ItemUpdated" AutoGenerateRows="False" DataKeyNames="notice_id" DataSourceID="SqlDataSource2" Height="50px" Width="125px" OnPageIndexChanging="DetailsView1_PageIndexChanging">
                        <Fields>
                            <asp:BoundField DataField="notice_id" HeaderText="notice_id" InsertVisible="False" ReadOnly="True" SortExpression="notice_id" />
                            <asp:BoundField DataField="notice_sub" HeaderText="notice_sub" SortExpression="notice_sub" />
                            <asp:BoundField DataField="notice_descrip" HeaderText="notice_descrip" SortExpression="notice_descrip" />
                            <asp:BoundField DataField="notice_date" HeaderText="notice_date" SortExpression="notice_date" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Notice] WHERE [notice_id] = @notice_id" InsertCommand="INSERT INTO [Notice] ([notice_sub], [notice_descrip], [notice_date]) VALUES (@notice_sub, @notice_descrip, @notice_date)" SelectCommand="SELECT * FROM [Notice] WHERE ([notice_id] = @notice_id)" UpdateCommand="UPDATE [Notice] SET [notice_sub] = @notice_sub, [notice_descrip] = @notice_descrip, [notice_date] = @notice_date WHERE [notice_id] = @notice_id">
                        <DeleteParameters>
                            <asp:Parameter Name="notice_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="notice_sub" Type="String" />
                            <asp:Parameter Name="notice_descrip" Type="String" />
                            <asp:Parameter DbType="Date" Name="notice_date" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="notice_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="notice_sub" Type="String" />
                            <asp:Parameter Name="notice_descrip" Type="String" />
                            <asp:Parameter DbType="Date" Name="notice_date" />
                            <asp:Parameter Name="notice_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   <%-- </form>--%>
</body>
</html>
</asp:Content>