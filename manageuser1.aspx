<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageuser1.aspx.cs" Inherits="ProjectHMS.manageuser1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Menu ID="Menu1" runat="server" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Orientation="Horizontal" StaticSubMenuIndent="16px">
            <Items>
                <asp:MenuItem NavigateUrl="~/manageuser1.aspx" Text="Manage Students" Value="Manage Students"></asp:MenuItem>
                <asp:MenuItem Text="Manage Hostel" Value="Manage Hostel"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/viewcomplaints.aspx" Text="View Complaints" Value="View Complaints"></asp:MenuItem>
                <asp:MenuItem Text="Update Notice" Value="Update Notice"></asp:MenuItem>
                <asp:MenuItem Text="Manage Library" Value="Manage Library" NavigateUrl="~/library.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/viewstudent.aspx" Text="View Students" Value="View Students"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Search by Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Search" />
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" EnableViewState="False" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem>Add Laundry</asp:ListItem>
                        <asp:ListItem>Add Expense</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [User] ([user_id], [name]) VALUES (@user_id, @name)" SelectCommand="SELECT [user_id], [name] FROM [User] WHERE ([name] = @name)" UpdateCommand="UPDATE [User] SET [name] = @name WHERE [user_id] = @user_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="user_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="expense_id" DataSourceID="SqlDataSource4" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="expense_id" HeaderText="expense_id" ReadOnly="True" SortExpression="expense_id" />
                            <asp:BoundField DataField="expense_descrip" HeaderText="expense_descrip" SortExpression="expense_descrip" />
                            <asp:BoundField DataField="expense_money" HeaderText="expense_money" SortExpression="expense_money" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="laundry_id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem" Visible="False">
                        <AlternatingItemTemplate>
                            <li style="">user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                total_items:
                                <asp:Label ID="total_itemsLabel" runat="server" Text='<%# Eval("total_items") %>' />
                                <br />
                                laundry_money:
                                <asp:Label ID="laundry_moneyLabel" runat="server" Text='<%# Eval("laundry_money") %>' />
                                <br />
                                laundry_id:
                                <asp:Label ID="laundry_idLabel" runat="server" Text='<%# Eval("laundry_id") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="">user_id:
                                <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                                <br />
                                total_items:
                                <asp:TextBox ID="total_itemsTextBox" runat="server" Text='<%# Bind("total_items") %>' />
                                <br />
                                laundry_money:
                                <asp:TextBox ID="laundry_moneyTextBox" runat="server" Text='<%# Bind("laundry_money") %>' />
                                <br />
                                laundry_id:
                                <asp:Label ID="laundry_idLabel1" runat="server" Text='<%# Eval("laundry_id") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">user_id:
                                <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                                <br />total_items:
                                <asp:TextBox ID="total_itemsTextBox" runat="server" Text='<%# Bind("total_items") %>' />
                                <br />laundry_money:
                                <asp:TextBox ID="laundry_moneyTextBox" runat="server" Text='<%# Bind("laundry_money") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
<br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="">user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                total_items:
                                <asp:Label ID="total_itemsLabel" runat="server" Text='<%# Eval("total_items") %>' />
                                <br />
                                laundry_money:
                                <asp:Label ID="laundry_moneyLabel" runat="server" Text='<%# Eval("laundry_money") %>' />
                                <br />
                                laundry_id:
                                <asp:Label ID="laundry_idLabel" runat="server" Text='<%# Eval("laundry_id") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="">user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                total_items:
                                <asp:Label ID="total_itemsLabel" runat="server" Text='<%# Eval("total_items") %>' />
                                <br />
                                laundry_money:
                                <asp:Label ID="laundry_moneyLabel" runat="server" Text='<%# Eval("laundry_money") %>' />
                                <br />
                                laundry_id:
                                <asp:Label ID="laundry_idLabel" runat="server" Text='<%# Eval("laundry_id") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
                <td>
                    <asp:ListView ID="ListView2" runat="server" DataKeyNames="user_expense_id" DataSourceID="SqlDataSource3" InsertItemPosition="LastItem" style="margin-top: 69px; margin-bottom: 1px" Visible="False">
                        <AlternatingItemTemplate>
                            <li style="">user_expense_id:
                                <asp:Label ID="user_expense_idLabel" runat="server" Text='<%# Eval("user_expense_id") %>' />
                                <br />
                                user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                expense_id:
                                <asp:Label ID="expense_idLabel" runat="server" Text='<%# Eval("expense_id") %>' />
                                <br />
                                expense_date:
                                <asp:Label ID="expense_dateLabel" runat="server" Text='<%# Eval("expense_date") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="">user_expense_id:
                                <asp:Label ID="user_expense_idLabel1" runat="server" Text='<%# Eval("user_expense_id") %>' />
                                <br />
                                user_id:
                                <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                                <br />
                                expense_id:
                                <asp:TextBox ID="expense_idTextBox" runat="server" Text='<%# Bind("expense_id") %>' />
                                <br />
                                expense_date:
                                <asp:TextBox ID="expense_dateTextBox" runat="server" Text='<%# Bind("expense_date") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">user_id:
                                <asp:TextBox ID="user_idTextBox" runat="server" Text='<%# Bind("user_id") %>' />
                                <br />expense_id:
                                <asp:TextBox ID="expense_idTextBox" runat="server" Text='<%# Bind("expense_id") %>' />
                                <br />expense_date:
                                <asp:TextBox ID="expense_dateTextBox" runat="server" Text='<%# Bind("expense_date") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
<br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="">user_expense_id:
                                <asp:Label ID="user_expense_idLabel" runat="server" Text='<%# Eval("user_expense_id") %>' />
                                <br />
                                user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                expense_id:
                                <asp:Label ID="expense_idLabel" runat="server" Text='<%# Eval("expense_id") %>' />
                                <br />
                                expense_date:
                                <asp:Label ID="expense_dateLabel" runat="server" Text='<%# Eval("expense_date") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="">user_expense_id:
                                <asp:Label ID="user_expense_idLabel" runat="server" Text='<%# Eval("user_expense_id") %>' />
                                <br />
                                user_id:
                                <asp:Label ID="user_idLabel" runat="server" Text='<%# Eval("user_id") %>' />
                                <br />
                                expense_id:
                                <asp:Label ID="expense_idLabel" runat="server" Text='<%# Eval("expense_id") %>' />
                                <br />
                                expense_date:
                                <asp:Label ID="expense_dateLabel" runat="server" Text='<%# Eval("expense_date") %>' />
                                <br />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                </td>
            </tr>
        </table>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Laundry] WHERE [laundry_id] = @laundry_id" InsertCommand="INSERT INTO [Laundry] ([user_id], [total_items], [laundry_money]) VALUES (@user_id, @total_items, @laundry_money)" SelectCommand="SELECT [user_id], [total_items], [laundry_money], [laundry_id] FROM [Laundry] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [Laundry] SET [user_id] = @user_id, [total_items] = @total_items, [laundry_money] = @laundry_money WHERE [laundry_id] = @laundry_id">
                        <DeleteParameters>
                            <asp:Parameter Name="laundry_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                            <asp:Parameter Name="total_items" Type="Int32" />
                            <asp:Parameter Name="laundry_money" Type="Decimal" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="user_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                            <asp:Parameter Name="total_items" Type="Int32" />
                            <asp:Parameter Name="laundry_money" Type="Decimal" />
                            <asp:Parameter Name="laundry_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User_Expense] WHERE [user_expense_id] = @user_expense_id" InsertCommand="INSERT INTO [User_Expense] ([user_id], [expense_id], [expense_date]) VALUES (@user_id, @expense_id, @expense_date)" SelectCommand="SELECT * FROM [User_Expense] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [User_Expense] SET [user_id] = @user_id, [expense_id] = @expense_id, [expense_date] = @expense_date WHERE [user_expense_id] = @user_expense_id">
                        <DeleteParameters>
                            <asp:Parameter Name="user_expense_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                            <asp:Parameter Name="expense_id" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="expense_date" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="user_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="user_id" Type="Int32" />
                            <asp:Parameter Name="expense_id" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="expense_date" />
                            <asp:Parameter Name="user_expense_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Expense]"></asp:SqlDataSource>
    </form>
</body>
</html>
