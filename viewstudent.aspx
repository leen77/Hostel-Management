<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewstudent.aspx.cs" Inherits="ProjectHMS.viewstudent" MasterPageFile="~/Admin.Master"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
            width: 416px;
        }
        .auto-style4 {
            width: 275px;
        }
        .auto-style3 {
            width: 386px;
        }
        .auto-style5 {
            width: 337px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 337px;
            height: 19px;
        }
        .auto-style9 {
            height: 19px;
        }
        .auto-style10 {
            width: 126px;
        }
        .auto-style11 {
            height: 19px;
            width: 126px;
        }
        .auto-style12 {
            height: 23px;
            width: 126px;
        }
        .auto-style13 {
            width: 337px;
            height: 13px;
        }
        .auto-style14 {
            width: 126px;
            height: 13px;
        }
        .auto-style15 {
            height: 13px;
        }
        .auto-style16 {
            width: 337px;
            height: 25px;
        }
        .auto-style17 {
            width: 126px;
            height: 25px;
        }
        .auto-style18 {
            height: 25px;
        }
        .auto-style19 {
            width: 337px;
            height: 23px;
        }
        .auto-style21 {
            width: 274px;
        }
        .auto-style20 {
            margin-top: 16px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
      <%--  <asp:Menu ID="Menu1" runat="server" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Orientation="Horizontal" StaticSubMenuIndent="16px">
            <Items>
                <asp:MenuItem NavigateUrl="~/manageuser1.aspx" Text="Manage Students" Value="Manage Students"></asp:MenuItem>
                <asp:MenuItem Text="Manage Hostel" Value="Manage Hostel"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/viewcomplaints.aspx" Text="View Complaints" Value="View Complaints"></asp:MenuItem>
                <asp:MenuItem Text="Update Notice" Value="Update Notice"></asp:MenuItem>
                <asp:MenuItem Text="Manage Library" Value="Manage Library" NavigateUrl="~/library.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/viewstudent.aspx" Text="View Students" Value="View Students"></asp:MenuItem>
            </Items>
        </asp:Menu>--%>
    
    </div>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style21">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text=" Enter Name :" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                    </td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style20"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" DelimiterCharacters="" MinimumPrefixLength="1" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" Enabled="True" ServiceMethod="GetNames" TargetControlID="TextBox1">
                    </asp:AutoCompleteExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" />
                    &nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                        <HeaderStyle BackColor="Blue" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [name] FROM [UserDb] WHERE ([name] = @name)" DeleteCommand="DELETE FROM [UserDb] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [UserDb] ([user_id], [name]) VALUES (@user_id, @name)" UpdateCommand="UPDATE [UserDb] SET [name] = @name WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                        </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="user_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    &nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="ID :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Name :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;
                    <asp:Label ID="Label27" runat="server" Text="Sem:" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label29" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;
                    <asp:Label ID="Label28" runat="server" Text="Branch:" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label30" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style14">
                    </td>
                <td class="auto-style15"></td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="DOB :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Address :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Mobile No :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Email :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label13" runat="server" Text="Room no :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="Floor :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    &nbsp;<asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style12">
                    </td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" Text="Laundry Bill :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17">
                    </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Text="Expense :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label10" runat="server" Text="Penalty :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17">
                    </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label11" runat="server" Text="Canteen Bill :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17">
                    </td>
                <td class="auto-style18">&nbsp;&nbsp;</td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;&nbsp; &nbsp;<asp:Label ID="Label12" runat="server" Text="Books Issued :" Visible="False" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:ListBox ID="ListBox1" runat="server" Rows="3" Width="100px" Visible="False" Font-Bold="True" Font-Size="Large"></asp:ListBox>
                    <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Check Out" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   <%-- </form>--%>
</body>
</html>
</asp:Content>