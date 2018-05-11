<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcomplaints.aspx.cs" Inherits="ProjectHMS.viewcomplaints1"  MasterPageFile="~/Admin.Master"%>
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
            height: 74px;
        }
        .auto-style3 {
            width: 165px;
        }
        .auto-style4 {
            height: 74px;
            width: 165px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
    <div>
    
        <br />
       <%-- <asp:Menu ID="Menu1" runat="server" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" Orientation="Horizontal" StaticSubMenuIndent="16px">
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
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" OnRowDeleting="GridView1_RowDeleting"  runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="complaint_id" DataSourceID="SqlDataSource5">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="complaint_id" HeaderText="complaint_id" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                            <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                            <asp:BoundField DataField="complaint_subject" HeaderText="complaint_subject" SortExpression="complaint_subject" />
                            <asp:BoundField DataField="complaint_date" HeaderText="complaint_date" SortExpression="complaint_date" />
                            <asp:BoundField DataField="complaint_status" HeaderText="complaint_status" SortExpression="complaint_status" />
                          
                            <%--<asp:BoundField DataField="complaint_descrip" HeaderText="complaint_descrip" SortExpression="complaint_descrip" />--%>
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" />
                    </asp:GridView>
                &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Complaint] WHERE [complaint_id] = @complaint_id" InsertCommand="INSERT INTO [Complaint] ([user_id], [complaint_subject], [complaint_descrip], [complaint_date], [complaint_status]) VALUES (@user_id, @complaint_subject, @complaint_descrip, @complaint_date, @complaint_status)" SelectCommand="SELECT * FROM [Complaint]" UpdateCommand="UPDATE [Complaint] SET [user_id] = @user_id, [complaint_subject] = @complaint_subject, [complaint_descrip] = @complaint_descrip, [complaint_date] = @complaint_date, [complaint_status] = @complaint_status WHERE [complaint_id] = @complaint_id">
                        <DeleteParameters>
                            <asp:Parameter Name="complaint_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="complaint_subject" Type="String" />
                            <asp:Parameter Name="complaint_descrip" Type="String" />
                            <asp:Parameter DbType="Date" Name="complaint_date" />
                            <asp:Parameter Name="complaint_status" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="user_id" Type="String" />
                            <asp:Parameter Name="complaint_subject" Type="String" />
                            <asp:Parameter Name="complaint_descrip" Type="String" />
                            <asp:Parameter DbType="Date" Name="complaint_date" />
                            <asp:Parameter Name="complaint_status" Type="String" />
                            <asp:Parameter Name="complaint_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="complaint_descrip" DataValueField="complaint_descrip" Font-Bold="True" Font-Size="Large" Visible="False"></asp:ListBox>
                </td>
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [complaint_descrip] FROM [Complaint] WHERE ([complaint_id] = @complaint_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="complaint_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
   <%-- </form>--%>
</body>
</html>

</asp:Content>
