<%@ Page Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Nreg.aspx.vb" Inherits="Nreg" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center"  style="width: 1000px; position: static">
        <tr>
            <td style="width: 25%; height: 30px;">
            </td>
            <td colspan="2" style="height: 30px; text-align: center;">
                <span style="font-size: 16pt; color: #ffff00"><strong>NEW&nbsp; USER REGISTRATION</strong></span></td>
            <td style="width: 25%; height: 30px;">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Patient-ID:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:TextBox ID="T_pid" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Style="position: static" Width="185px"></asp:TextBox></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Name:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:TextBox ID="T_name" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Style="position: static" Width="185px"></asp:TextBox></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Gender:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:DropDownList ID="D_gender" runat="server" Font-Names="Times New Roman"
                    Font-Size="12pt" Style="position: static" Width="194px">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Age:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:TextBox ID="T_age" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Style="position: static" Width="185px"></asp:TextBox></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Contact-No:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:TextBox ID="T_cno" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Style="position: static" Width="185px"></asp:TextBox>
            </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Email-ID:</span></td>
            <td style="width: 25%; height: 30px">
                <asp:TextBox ID="T_email" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Style="position: static" Width="185px"></asp:TextBox></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Address:</span></td>
            <td style="width: 25%;" rowspan="2" valign="top">
                <asp:TextBox ID="T_addres" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                    Height="59px" Style="position: static" Width="186px" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
                <table style="width: 239px; position: static">
                    <tr>
                        <td style="width: 100px; height: 30px">
                            <asp:Button ID="Button1" runat="server" BorderStyle="Dotted" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="SUBMIT" Width="104px" BackColor="Black" /></td>
                        <td style="width: 100px; height: 30px">
                            <asp:Button ID="Button2" runat="server" BorderStyle="Dotted" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="SEARCH" Width="104px" BackColor="Black" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%; height: 30px" valign="top">
                <table style="width: 239px; position: static">
                <tr>
                    <td style="width: 100px; height: 30px">
                        <asp:Button ID="Button3" runat="server" BorderStyle="Dotted" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="DELETE" Width="104px" BackColor="Black" /></td>
                    <td style="width: 100px; height: 30px">
                        <asp:Button ID="Button4" runat="server" BorderStyle="Dotted" Font-Bold="True" Font-Names="Times New Roman"
                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="RESET" Width="104px" BackColor="Black" /></td>
                </tr>
            </table>
            </td>
            <td style="width: 25%; height: 30px">
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
    </table>
</asp:Content>

