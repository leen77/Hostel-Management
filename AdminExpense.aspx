

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminExpense.aspx.cs" Inherits="ProjectHMS.AdminExpense" MasterPageFile="~/Admin.Master" %>
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
            height: 29px;
        }
        .auto-style3 {
            width: 74px;
        }
        .auto-style4 {
            height: 29px;
            width: 74px;
        }
        .auto-style5 {
            width: 403px;
        }
        .auto-style6 {
            height: 29px;
            width: 403px;
        }
        .auto-style7 {
            height: 21px;
            width: 403px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            height: 21px;
            width: 74px;
        }
        .auto-style10 {
            width: 256px;
        }
        .auto-style11 {
            height: 21px;
            width: 256px;
        }
        .auto-style12 {
            height: 29px;
            width: 256px;
        }
    </style>
</head>
<body>
   
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#339933" Text="Add Expense"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" ForeColor="#0000CC" Text="Enter Name:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender"  runat="server" DelimiterCharacters="" Enabled="True" MinimumPrefixLength="1" ServiceMethod="GetNames" TargetControlID="TextBox1">
                    </asp:AutoCompleteExtender>
&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="User_id:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                </td>
                <td class="auto-style10"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Name:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label6" runat="server" ForeColor="#0000CC" Text="Select Expense Type:" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Please Select one option</asp:ListItem>
                        <asp:ListItem>Laundry</asp:ListItem>
                        <asp:ListItem>Penalty</asp:ListItem>
                        <asp:ListItem>Other Expense</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style11"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Total Items:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label10" runat="server" Text="Penalty Subject:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Expense Descrip:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" TextMode="MultiLine" Rows="5" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Laundry Charge:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style12">
                    <asp:Label ID="Label11" runat="server" Text="Penalty Descrip:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    <asp:TextBox ID="TextBox5" TextMode="MultiLine" Row="5" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label14" runat="server" Text="Expense Charge:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server" Visible="False"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style12">
                    <asp:Label ID="Label12" runat="server" Text="Penalty Charge:" Visible="False" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" Visible="False" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" Text="Add" Visible="False" OnClick="Button4_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Visible="False" AllowPaging="True" DataSourceID="SqlDataSource1" 
                        AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="laundry_id" ForeColor="#000066"
                      >
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="laundry_id" HeaderText="laundry_id" SortExpression="laundry_id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="total_items" HeaderText="total_items" SortExpression="total_items" />
                            <asp:BoundField DataField="laundry_money" HeaderText="laundry_money" SortExpression="laundry_money" />
                            <asp:BoundField DataField="laundry_date" HeaderText="laundry_date" SortExpression="laundry_date" />
                            <asp:BoundField DataField="laundry_status" HeaderText="laundry_status" SortExpression="laundry_status" />
                        </Columns>
                      
                        <HeaderStyle BackColor="#009999" BorderColor="#000066" BorderStyle="Solid" ForeColor="#000066" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="Black" />
                      
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Laundry] WHERE [laundry_id] = @laundry_id"
                        InsertCommand="INSERT INTO [Laundry] ([user_id], [total_items], [laundry_money], [laundry_date], [laundry_status]) VALUES (@user_id, @total_items, @laundry_money, @laundry_date, @laundry_status)" 
                        SelectCommand="SELECT * FROM [Laundry] WHERE ([user_id] = @user_id)" 
                        UpdateCommand="UPDATE [Laundry] SET [total_items] = @total_items, [laundry_money] = @laundry_money, [laundry_date] = @laundry_date, [laundry_status] = @laundry_status WHERE [laundry_id] = @laundry_id">
                        <%--<DeleteParameters>
                            <asp:Parameter Name="UserId" Type="String" />
                        </DeleteParameters>
                        --%>
                        <DeleteParameters>
                            <asp:Parameter Name="laundry_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="total_items" Type="Int32" />
                            <asp:Parameter Name="laundry_money" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="laundry_date" />
                            <asp:Parameter Name="laundry_status" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label4" Name="user_id" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <%--<asp:Parameter Name="user_id" Type="String" />--%>
                           <%-- <asp:Parameter Name="user_id" Type="String" />--%>
                            <asp:Parameter Name="total_items" Type="Int32" />
                            <asp:Parameter Name="laundry_money" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="laundry_date" />
                            
                            <asp:Parameter Name="laundry_status" Type="String" />
                            <asp:Parameter Name="laundry_id" Type="Int32" />
                            
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style12">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="penalty_id" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" ForeColor="#000066" Visible="False">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="penalty_id" HeaderText="penalty_id" InsertVisible="False" ReadOnly="True" SortExpression="penalty_id" />
                            <%--<asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />--%>
                            <asp:BoundField DataField="penalty_subject" HeaderText="penalty_subject" SortExpression="penalty_subject" />
                            <asp:BoundField DataField="penalty_descrip" HeaderText="penalty_descrip" SortExpression="penalty_descrip" />
                            <asp:BoundField DataField="penalty_money" HeaderText="penalty_money" SortExpression="penalty_money" />
                            <asp:BoundField DataField="penalty_date" HeaderText="penalty_date" SortExpression="penalty_date" />
                            <asp:BoundField DataField="penalty_status" HeaderText="penalty_status" SortExpression="penalty_status" />
                        </Columns>
                        <HeaderStyle BackColor="#009999" />
                        <RowStyle BackColor="White" />
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                    <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="expense_id" DataSourceID="SqlDataSource3" ForeColor="#0000CC" Visible="False">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="expense_id" HeaderText="expense_id" InsertVisible="False" ReadOnly="True" SortExpression="expense_id" />
                           <%-- <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />--%>
                            <asp:BoundField DataField="expense_descrip" HeaderText="expense_descrip" SortExpression="expense_descrip" />
                            <asp:BoundField DataField="expense_money" HeaderText="expense_money" SortExpression="expense_money" />
                            <asp:BoundField DataField="expense_date" HeaderText="expense_date" SortExpression="expense_date" />
                            <asp:BoundField DataField="expense_status" HeaderText="expense_status" SortExpression="expense_status" />
                        </Columns>
                        <HeaderStyle BackColor="#009999" />
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <br />
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    <br />
                </td>
                <td class="auto-style12">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                         DeleteCommand="DELETE FROM [Penalty] WHERE [penalty_id] = @penalty_id" 
                        InsertCommand="INSERT INTO [Penalty] ([user_id], [penalty_subject], [penalty_descrip], [penalty_money], [penalty_date], [penalty_status]) VALUES (@user_id, @penalty_subject, @penalty_descrip, @penalty_money, @penalty_date, @penalty_status)" 
                        SelectCommand="SELECT * FROM [Penalty] WHERE ([user_id] = @user_id)"
                         UpdateCommand="UPDATE [Penalty] SET [penalty_subject] = @penalty_subject, [penalty_descrip] = @penalty_descrip, [penalty_money] = @penalty_money, [penalty_date] = @penalty_date, [penalty_status] = @penalty_status WHERE [penalty_id] = @penalty_id">
                       <SelectParameters>
                             <asp:ControlParameter ControlID="Label4" Name="user_id" PropertyName="Text" Type="String" />
                       </SelectParameters> 
                        <DeleteParameters>
                            <asp:Parameter Name="penalty_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="penalty_subject" Type="String" />
                            <asp:Parameter Name="penalty_descrip" Type="String" />
                            <asp:Parameter Name="penalty_money" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="penalty_date" />
                            <asp:Parameter Name="penalty_status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                           <%-- <asp:Parameter Name="user_id" Type="String" />--%>
                            <%--<asp:Parameter Name="user_id" Type="String" />--%>
                            <asp:Parameter Name="penalty_subject" Type="String" />
                            <asp:Parameter Name="penalty_descrip" Type="String" />
                            <asp:Parameter Name="penalty_money" Type="Decimal" />
                            <asp:Parameter Name="penalty_date" DbType="Date" />
                            <asp:Parameter Name="penalty_status" Type="String" />
                            <asp:Parameter Name="penalty_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server"  ConnectionString ="<%$ ConnectionStrings:ConnectionString %>" 
                        DeleteCommand="DELETE FROM [Expense] WHERE [expense_id] = @expense_id"
                         InsertCommand="INSERT INTO [Expense] ([user_id], [expense_descrip], [expense_money], [expense_date], [expense_status]) VALUES (@user_id, @expense_descrip, @expense_money, @expense_date, @expense_status)" 
                        SelectCommand="SELECT * FROM [Expense] WHERE ([user_id] = @user_id)" 
                        UpdateCommand="UPDATE [Expense] SET [expense_descrip] = @expense_descrip, [expense_money] = @expense_money, [expense_date] = @expense_date, [expense_status] = @expense_status WHERE [expense_id] = @expense_id">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label4" Name="user_id" PropertyName="Text" Type="String" />
                        </SelectParameters>
                            <DeleteParameters>
                            <asp:Parameter Name="expense_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="expense_descrip" Type="String" />
                            <asp:Parameter Name="expense_money" Type="Decimal" />
                            <asp:Parameter DbType="Date" Name="expense_date" />
                            <asp:Parameter Name="expense_status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            
                           <%-- <asp:Parameter Name="user_id" Type="String" />--%>
                            <asp:Parameter Name="expense_descrip" Type="String" />
                            <asp:Parameter Name="expense_money" Type="Decimal" />
                            <asp:Parameter Name="expense_date" DbType="Date" />
                            <asp:Parameter Name="expense_status" Type="String" />
                            <asp:Parameter Name="expense_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <br />
                    <asp:DropDownList ID="DropDownList2" runat="server" Font-Bold="True" Font-Size="Large" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>Select Month</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">June</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sept</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:DropDownList ID="DropDownList3" runat="server" Font-Bold="True" Font-Size="Large">
                        <asp:ListItem>Select Month</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">Jun</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sept</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList4" runat="server" Font-Bold="True" Font-Size="Large">
                        <asp:ListItem>Select Month</asp:ListItem>
                        <asp:ListItem Value="01">Jan</asp:ListItem>
                        <asp:ListItem Value="02">Feb</asp:ListItem>
                        <asp:ListItem Value="03">Mar</asp:ListItem>
                        <asp:ListItem Value="04">Apr</asp:ListItem>
                        <asp:ListItem Value="05">May</asp:ListItem>
                        <asp:ListItem Value="06">June</asp:ListItem>
                        <asp:ListItem Value="07">July</asp:ListItem>
                        <asp:ListItem Value="08">Aug</asp:ListItem>
                        <asp:ListItem Value="09">Sept</asp:ListItem>
                        <asp:ListItem Value="10">Oct</asp:ListItem>
                        <asp:ListItem Value="11">Nov</asp:ListItem>
                        <asp:ListItem Value="12">Dec</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Pay BiLL" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Pay BiLL" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Pay BiLL" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
   
</body>
</html>

</asp:Content>
