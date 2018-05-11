<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendComplaint.aspx.cs" Inherits="ProjectHMS.SendComplaint"  MasterPageFile="~/Main1.Master"%>
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
            width: 394px;
        }
        .auto-style3 {
            width: 394px;
            height: 47px;
        }
        .auto-style4 {
            height: 47px;
        }
        .auto-style5 {
            width: 394px;
            height: 61px;
        }
        .auto-style6 {
            height: 61px;
        }
        .auto-style7 {
            width: 82px;
            height: 47px;
        }
        .auto-style8 {
            width: 82px;
            height: 61px;
        }
        .auto-style9 {
            width: 82px;
            margin-left: 124px;
        }
        .auto-style10 {
            width: 82px;
            height: 225px;
            margin-left: 124px;
        }
        .auto-style11 {
            height: 225px;
        }
    </style>
</head>
<body>
    
    <div>
    
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style4">
                <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/complaint-box-web-300x232.png" />
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="Complaint Subject:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="2" Width="300"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="complaint_id" DataSourceID="SqlDataSource1" EnableModelValidation="False">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="complaint_subject" HeaderText="complaint_subject" SortExpression="complaint_subject" />
                        <asp:BoundField DataField="complaint_descrip" HeaderText="complaint_descrip" SortExpression="complaint_descrip" />
                        <asp:BoundField DataField="complaint_date" HeaderText="complaint_date" SortExpression="complaint_date" />
                        <asp:BoundField DataField="complaint_status" HeaderText="complaint_status" SortExpression="complaint_status" />
                        <asp:BoundField DataField="complaint_id" HeaderText="complaint_id" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                    </Columns>
                    <HeaderStyle BackColor="#0000CC" />
                </asp:GridView>
            </td>
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
            <td class="auto-style9">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Complaint] WHERE [complaint_id] = @complaint_id" InsertCommand="INSERT INTO [Complaint] ([complaint_subject], [complaint_descrip], [complaint_date], [complaint_status]) VALUES (@complaint_subject, @complaint_descrip, @complaint_date, @complaint_status)" SelectCommand="SELECT [complaint_subject], [complaint_descrip], [complaint_date], [complaint_status], [complaint_id] FROM [Complaint] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [Complaint] SET [complaint_subject] = @complaint_subject, [complaint_descrip] = @complaint_descrip, [complaint_date] = @complaint_date, [complaint_status] = @complaint_status WHERE [complaint_id] = @complaint_id">
                    <DeleteParameters>
                        <asp:Parameter Name="complaint_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="complaint_subject" Type="String" />
                        <asp:Parameter Name="complaint_descrip" Type="String" />
                        <asp:Parameter DbType="Date" Name="complaint_date" />
                        <asp:Parameter Name="complaint_status" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="user_id" SessionField="user" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="complaint_subject" Type="String" />
                        <asp:Parameter Name="complaint_descrip" Type="String" />
                        <asp:Parameter DbType="Date" Name="complaint_date" />
                        <asp:Parameter Name="complaint_status" Type="String" />
                        <asp:Parameter Name="complaint_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
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
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Text="Complaint Details:" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="10" Width="300"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
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
            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
            </td>
            <td>&nbsp;</td>
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
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
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
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>&nbsp;</td>
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
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
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
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
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
 
    </body>
</html>
</asp:Content>