<%@ Page Language="VB" MasterPageFile="~/User.master" AutoEventWireup="false" CodeFile="doctsear.aspx.vb" Inherits="doctsear" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center"  style="width: 750px; position: static">
        <tr>
            <td style="width: 25%; height: 30px;">
            </td>
            <td colspan="2" style="height: 30px; text-align: left">
                <strong><span style="font-size: 14pt; color: #ffff00">DOCTORS INFORMATION FORM</span></strong></td>
            <td style="width: 25%; height: 30px;">
            </td>
        </tr>
    <tr>
        <td style="width: 25%; height: 30px">
            <span style="color: #ffffff"><strong>Select Any One:</strong></span></td>
        <td colspan="2" style="height: 30px; text-align: left">
        </td>
        <td style="width: 25%; height: 30px">
            <strong><span style="color: #ffffff">Choose Any One:</span></strong></td>
    </tr>
        <tr>
            <td style="width: 25%; height: 30px; text-align: right">
                <span style="font-size: 14pt; color: #ffffff">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Times New Roman"
                    Font-Size="12pt" Style="position: static" Width="194px" AutoPostBack="True">
                    <asp:ListItem>SELECT</asp:ListItem>
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Phone</asp:ListItem>
                    <asp:ListItem>Specilisation</asp:ListItem>
                </asp:DropDownList></span></td>
            <td style="width: 25%; height: 30px; text-align: center;">
                <span style="color: #ffffff"><strong><marquee>Click Here</marquee> </strong></span></td>
            <td style="width: 25%; height: 30px; text-align: left">
                <span style="font-size: 14pt; color: #ffffff">
                </span></td>
            <td style="width: 25%; height: 30px">
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Times New Roman"
                    Font-Size="12pt" Style="position: static" Width="194px">
                    <asp:ListItem>SELECT</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: center;">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/img/hos51.jpg"
                    Style="position: static" Width="100px" /></td>
            <td style="width: 25%; height: 30px; text-align: center;">
                0</td>
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
            <td colspan="4" style="height: 38px">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="131px" Style="position: static"
                    Width="497px">
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
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

