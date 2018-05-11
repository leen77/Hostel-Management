<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="library.aspx.cs" Inherits="ProjectHMS.library" MasterPageFile="~/Admin.Master"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
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
            margin-top: 5px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 262px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style7 {
            width: 371px;
        }
        .auto-style8 {
            width: 371px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style11 {
            width: 192px;
        }
        .auto-style12 {
            width: 75px;
        }
        .auto-style14 {
            height: 23px;
            width: 231px;
        }
        .auto-style15 {
            width: 231px;
        }
        .auto-style16 {
            height: 28px;
            width: 231px;
        }
    </style>
</head>
<body>
   <%-- <form id="form1" runat="server">--%>
    <div>
    
        <br />
        <%--<asp:Menu ID="Menu1" runat="server" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Orientation="Horizontal" StaticSubMenuIndent="16px">
            <Items>
                <asp:MenuItem NavigateUrl="~/manageuser1.aspx" Text="Manage Students" Value="Manage Students"></asp:MenuItem>
                <asp:MenuItem Text="Manage Hostel Details" Value="Manage Hostel Details"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/viewcomplaints.aspx" Text="View Complaints" Value="View Complaints"></asp:MenuItem>
                <asp:MenuItem Text="Update Notice" Value="Update Notice"></asp:MenuItem>
                <asp:MenuItem Text="Manage Library" Value="Manage Library" NavigateUrl="~/library.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>--%>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Search Book:" Font-Bold="True" Font-Italic="False" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server"  CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" DelimiterCharacters="" Enabled="True" MinimumPrefixLength="1" ServiceMethod="GetBooks" TargetControlID="TextBox1">
                    </asp:AutoCompleteExtender>
                </td>
                <td class="auto-style2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Search Student:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" DelimiterCharacters="" Enabled="True"  MinimumPrefixLength="1" ServiceMethod="GetNames" TargetControlID="TextBox2">
                    </asp:AutoCompleteExtender>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style16">
                    <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" />
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" 
                        AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                            <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                            <asp:BoundField DataField="book_author" HeaderText="book_author" SortExpression="book_author" />
                            <asp:BoundField DataField="isbn_no" HeaderText="isbn_no" SortExpression="isbn_no" />
                            <asp:BoundField DataField="units_available" HeaderText="units_available" SortExpression="units_available" />
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                         SelectCommand="SELECT * FROM [Library] WHERE ([book_name] = @book_name)" 
                        DeleteCommand="DELETE FROM [Library] WHERE [book_id] = @book_id" 
                        InsertCommand="INSERT INTO [Library] ([book_id], [book_name], [book_author], [isbn_no], [units_available]) VALUES (@book_id, @book_name, @book_author, @isbn_no, @units_available)" 
                        UpdateCommand="UPDATE [Library] SET [book_name] = @book_name, [book_author] = @book_author, [isbn_no] = @isbn_no, [units_available] = @units_available WHERE [book_id] = @book_id">
                        <DeleteParameters>
                            <asp:Parameter Name="book_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="book_id" Type="Int32" />
                            <asp:Parameter Name="book_name" Type="String" />
                            <asp:Parameter Name="book_author" Type="String" />
                            <asp:Parameter Name="isbn_no" Type="Int32" />
                            <asp:Parameter Name="units_available" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                             <asp:ControlParameter ControlID="TextBox1" Name="book_name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="book_name" Type="String" />
                            <asp:Parameter Name="book_author" Type="String" />
                            <asp:Parameter Name="isbn_no" Type="Int32" />
                            <asp:Parameter Name="units_available" Type="Int32" />
                            <asp:Parameter Name="book_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style15">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" >
                        <HeaderStyle BackColor="#0000CC" />
                        <Columns>
                        <asp:BoundField DataField="user_id" HeaderText="UserId" />
                         <asp:BoundField DataField="name" HeaderText="Name" />
                            </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource2" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                </td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                            <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                            <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [book_id], [issue_date], [due_date] FROM [Takes] WHERE ([user_id] = @user_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView2" Name="user_id" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [name] FROM [UserDb] WHERE ([name] = @name)" DeleteCommand="DELETE FROM [UserDb] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [UserDb] ([user_id], [name]) VALUES (@user_id, @name)" UpdateCommand="UPDATE [UserDb] SET [name] = @name WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox2" Name="name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="user_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Book ID :" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" EnableViewState="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="Student ID :" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox4" runat="server" EnableViewState="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Issue Book" Width="100px" />
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Return Book" OnClick="Button2_Click" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Renew Book" Width="100px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" EnableViewState="False" Width="300px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" EnableViewState="False" Width="300px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <%--</form>--%>
</body>
</html>
    </asp:Content>
