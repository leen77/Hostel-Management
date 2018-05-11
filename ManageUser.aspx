<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="ProjectHMS.ManageUser" MasterPageFile="~/Admin.Master" %>
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
        }
        .auto-style2 {
            width: 17px;
        }
    .auto-style6 {
        height: 19px;
    }
    .auto-style7 {
        width: 17px;
        height: 19px;
    }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter Name:" Font-Bold="True" Font-Size="Large" ForeColor="#3333FF"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" MinimumPrefixLength="1"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10" runat="server" DelimiterCharacters="" Enabled="True" ServiceMethod="GetNames" TargetControlID="TextBox1">
                    </asp:AutoCompleteExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                    &nbsp;<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                        <HeaderStyle BackColor="#3333FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [user_id], [name] FROM [UserDb] WHERE ([name] = @name)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AllowPaging="True">
                        <Fields>
                            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" ReadOnly="True" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                            <asp:BoundField DataField="mobileno" HeaderText="mobileno" SortExpression="mobileno" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            <asp:BoundField DataField="pcode" HeaderText="pcode" SortExpression="pcode" />
                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                            <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                            <asp:BoundField DataField="sem" HeaderText="sem" SortExpression="sem" />
                            <asp:CommandField ShowEditButton="True" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserDb] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [UserDb] ([user_id], [name], [dob], [mobileno], [email], [address], [city], [pcode], [state], [branch], [sem]) VALUES (@user_id, @name, @dob, @mobileno, @email, @address, @city, @pcode, @state, @branch, @sem)" SelectCommand="SELECT * FROM [UserDb] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [UserDb] SET [name] = @name, [dob] = @dob, [mobileno] = @mobileno, [email] = @email, [address] = @address, [city] = @city, [pcode] = @pcode, [state] = @state, [branch] = @branch, [sem] = @sem WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="dob" Type="String" />
                            <asp:Parameter Name="mobileno" Type="Decimal" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="pcode" Type="Decimal" />
                            <asp:Parameter Name="state" Type="String" />
                            <asp:Parameter Name="branch" Type="String" />
                            <asp:Parameter Name="sem" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="user_id" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="dob" Type="String" />
                            <asp:Parameter Name="mobileno" Type="Decimal" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="address" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="pcode" Type="Decimal" />
                            <asp:Parameter Name="state" Type="String" />
                            <asp:Parameter Name="branch" Type="String" />
                            <asp:Parameter Name="sem" Type="Int32" />
                            <asp:Parameter Name="user_id" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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
    
    </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>