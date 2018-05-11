<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register1.aspx.cs" Inherits="ProjectHMS.Register" MasterPageFile="~/HeadFoot.Master"
     %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label47" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
    <br />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 117px;
        }
        .auto-style3 {
            width: 16px;
        }
        .auto-style5 {
            width: 355px;
        }
        .auto-style6 {
            width: 16px;
            height: 35px;
        }
        .auto-style8 {
            width: 355px;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
        .auto-style10 {
            width: 117px;
            height: 35px;
        }
        .auto-style11 {
            width: 16px;
            height: 30px;
        }
        .auto-style13 {
            width: 355px;
            height: 30px;
        }
        .auto-style14 {
            height: 30px;
        }
        .auto-style15 {
            width: 117px;
            height: 30px;
        }
        .auto-style18 {
            width: 90px;
        }
        .auto-style19 {
            width: 3px;
        }
        .auto-style20 {
            height: 42px;
        }
        .auto-style24 {
            width: 70px;
        }
        .auto-style25 {
            width: 223px;
        }
        .auto-style27 {
            width: 90px;
            height: 4px;
        }
        .auto-style28 {
            width: 34px;
            height: 4px;
        }
        .auto-style29 {
            width: 3px;
            height: 4px;
        }
        .auto-style30 {
            height: 4px;
        }
        .auto-style31 {
            width: 34px;
        }
        .auto-style32 {
            width: 2px;
        }
        .auto-style33 {
            width: 90px;
            height: 42px;
        }
        .auto-style34 {
            width: 34px;
            height: 42px;
        }
        .auto-style35 {
            width: 3px;
            height: 42px;
        }
        .auto-style36 {
            width: 65px;
        }
        .auto-style37 {
            height: 42px;
            width: 65px;
        }
        .auto-style38 {
            height: 4px;
            width: 65px;
        }
        .auto-style39 {
            width: 16px;
            height: 23px;
        }
        .auto-style40 {
            height: 23px;
        }
        .auto-style41 {
            width: 355px;
            height: 23px;
        }
        .auto-style42 {
            width: 117px;
            height: 23px;
        }
        .auto-style43 {
            width: 457px;
        }
    </style>
</head>
<body>
         <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label48" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#339933" Text="REGISTRATION" Visible="False"></asp:Label>
                    <strong>&nbsp;</strong></td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" Visible="False">
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="ENTER REGISTRATION DETAILS">
                                <table class="auto-style1">
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label7" runat="server" Text="First Name:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style31">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="auto-style19">
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style37">
                                            <asp:Label ID="Label8" runat="server" Text="Last Name:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style33">
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style34">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                        <td class="auto-style35"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style38">
                                            <asp:Label ID="Label9" runat="server" Text="Semester:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style27">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style28">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" Font-Bold="True" Font-Overline="False" Font-Size="Large" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style30">
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Must be from1 to 8" MaximumValue="8" MinimumValue="1" ForeColor="#CC0000"></asp:RangeValidator>
                                        </td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style29"></td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style30"></td>
                                        <td class="auto-style30"></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label49" runat="server" Font-Bold="True" Font-Size="Large" Text="Branch:"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style31">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox17" ErrorMessage="Must be two letter capital Initials" ValidationExpression="[A-Z][A-Z]" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label10" runat="server" Text="DOB:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:Label ID="Label42" runat="server" Text="Day"></asp:Label>
                                            <asp:DropDownList ID="DropDownList8" runat="server">
                                                <asp:ListItem> Select</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                                <asp:ListItem>9</asp:ListItem>
                                                <asp:ListItem>10</asp:ListItem>
                                                <asp:ListItem>11</asp:ListItem>
                                                <asp:ListItem>12</asp:ListItem>
                                                <asp:ListItem>13</asp:ListItem>
                                                <asp:ListItem>14</asp:ListItem>
                                                <asp:ListItem>15</asp:ListItem>
                                                <asp:ListItem>16</asp:ListItem>
                                                <asp:ListItem>17</asp:ListItem>
                                                <asp:ListItem>18</asp:ListItem>
                                                <asp:ListItem>19</asp:ListItem>
                                                <asp:ListItem>20</asp:ListItem>
                                                <asp:ListItem>21</asp:ListItem>
                                                <asp:ListItem>22</asp:ListItem>
                                                <asp:ListItem>23</asp:ListItem>
                                                <asp:ListItem>24</asp:ListItem>
                                                <asp:ListItem>25</asp:ListItem>
                                                <asp:ListItem>26</asp:ListItem>
                                                <asp:ListItem>27</asp:ListItem>
                                                <asp:ListItem>28</asp:ListItem>
                                                <asp:ListItem>29</asp:ListItem>
                                                <asp:ListItem>30</asp:ListItem>
                                                <asp:ListItem>31</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" InitialValue="Select" runat="server" ControlToValidate="DropDownList8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:Label ID="Label43" runat="server" Text="Month"></asp:Label>
                                            <asp:DropDownList ID="DropDownList9" runat="server">
                                                <asp:ListItem >Select</asp:ListItem>
                                                <asp:ListItem>Jan</asp:ListItem>
                                                <asp:ListItem>Feb</asp:ListItem>
                                                <asp:ListItem>Mar</asp:ListItem>
                                                <asp:ListItem>Apr</asp:ListItem>
                                                <asp:ListItem>May</asp:ListItem>
                                                <asp:ListItem>June</asp:ListItem>
                                                <asp:ListItem>July</asp:ListItem>
                                                <asp:ListItem>Aug</asp:ListItem>
                                                <asp:ListItem>Sept</asp:ListItem>
                                                <asp:ListItem>Oct</asp:ListItem>
                                                <asp:ListItem>Nov</asp:ListItem>
                                                <asp:ListItem>Dec</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21"  InitialValue="Select" runat="server" ControlToValidate="DropDownList9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:Label ID="Label44" runat="server" Text="Year"></asp:Label>
                                            <asp:DropDownList ID="DropDownList10" runat="server">
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>1994</asp:ListItem>
                                                <asp:ListItem>1995</asp:ListItem>
                                                <asp:ListItem>1996</asp:ListItem>
                                                <asp:ListItem>1997</asp:ListItem>
                                                <asp:ListItem>1998</asp:ListItem>
                                                <asp:ListItem>1999</asp:ListItem>
                                                <asp:ListItem>2000</asp:ListItem>
                                                <asp:ListItem>2001</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"  InitialValue="Select" ControlToValidate="DropDownList10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        
                                        <td class="auto-style31">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td class="auto-style19">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label12" runat="server" Text="Address:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                            <br />
                                        </td>
                                        <td class="auto-style31">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label14" runat="server" Text="Email:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style31">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Email not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label22" runat="server" Text="Mobile No:" Font-Bold="True"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style31">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Must start with 789 and should be 10 digit" ControlToValidate="TextBox9" ValidationExpression="[789]{1}[0-9]{9}" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label16" runat="server" Text="City:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label18" runat="server" Text="State:" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style36">
                                            <asp:Label ID="Label20" runat="server" Text="Pincode:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style18">
                                            <asp:TextBox ID="TextBox8" runat="server" ></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style31">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style19">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="ROOM DETAILS">
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Select floor:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style43">
                                            <asp:DropDownList ID="DropDownList6" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" InitialValue=" Select" runat="server" ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Select Room Category:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style43">
                                            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                                                <asp:ListItem>Please select</asp:ListItem>
                                                <asp:ListItem Value="1">Private(One Per Room)</asp:ListItem>
                                                <asp:ListItem Value="2">Dual(Two Per Room)</asp:ListItem>
                                                <asp:ListItem Value="3">Normal(Three Per Room)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" InitialValue="Please select" runat="server" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label23" runat="server" Text="Rooms List:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style43">
                                            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True" ></asp:ListBox>
                                            <asp:Label ID="Label35" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="ListBox1" ErrorMessage="Please Select Room no" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Room Slots Available:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style43">
                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">
                                            <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">
                                            <asp:Label ID="Label36" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">
                                            <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                            <asp:ListBox ID="ListBox3" runat="server" AutoPostBack="True" Visible="False"></asp:ListBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td class="auto-style43">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style24">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="PAYMENT DETAILS">
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label24" runat="server" Text="Payment Amount:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label26" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style32">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label25" runat="server" Text="Select Payment Type:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
                                                <asp:ListItem>Please SELECT</asp:ListItem>
                                                <asp:ListItem>Net Banking</asp:ListItem>
                                                <asp:ListItem>Debit Card</asp:ListItem>
                                                <asp:ListItem>Credit Card</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" InitialValue="Please SELECT" runat="server" ControlToValidate="DropDownList7" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style32">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style32">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label37" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC66"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style32">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td class="auto-style32">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" Title="FINAL REGISTRATION">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <table class="auto-style1">
                                    <tr>
                                        <td>&nbsp;</td>
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
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="User ID:" Font-Bold="True" Font-Overline="False" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <asp:Label ID="Label46" runat="server"></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must Match with College Id" ValidationExpression="[D][D][U][0-9]{3}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>&nbsp;</td>
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
                                        <td>
                                            <asp:Label ID="Label28" runat="server" Text="Password:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox11"  textMode="Password" runat="server"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Password must contains min 8 and max 15 characters containing alphanumeric" ControlToValidate="TextBox11" ValidationExpression="^[a-zA-Z0-9\s]{8,15}$" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style20">
                                            <asp:Label ID="Label29" runat="server" Text="Confirm Password:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td class="auto-style20">
                                            <asp:TextBox ID="TextBox12" textMode="Password"  runat="server"></asp:TextBox>
                                        </td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="auto-style20">
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox11" ControlToValidate="TextBox12" ErrorMessage="Confirm Password must match with password" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                                        </td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                        <td class="auto-style20"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                            &nbsp;</td>
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
                                        <td>
                                        </td>
                                        <td>
                                            &nbsp;</td>
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
                                        <td>
                                            <asp:Label ID="Label41" runat="server" Text="Upload Your Photo:" Font-Bold="True" Font-Size="Large"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
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
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label39" runat="server"></asp:Label>
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
                                        <td>&nbsp;</td>
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
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </td>
                <td class="auto-style5">
                    <br />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    </td>
                <td class="auto-style40">
                    </td>
                <td class="auto-style41">
                    </td>
                <td class="auto-style40"></td>
                <td class="auto-style42"></td>
                <td class="auto-style40"></td>
                <td class="auto-style40"></td>
                <td class="auto-style40"></td>
                <td class="auto-style40"></td>
                <td class="auto-style40"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    <br />
                    <br />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
&nbsp;
                    </td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style13">
                    &nbsp;</td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
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