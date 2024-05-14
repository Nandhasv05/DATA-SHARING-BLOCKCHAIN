<%@ Page Language="VB" MasterPageFile="~/User.master" AutoEventWireup="false" CodeFile="phrrep.aspx.vb" Inherits="phrrep" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center"  style="width: 750px; position: static">
        <tr>
            <td style="width: 25%; height: 30px;">
            </td>
            <td colspan="2" style="height: 30px; text-align: right">
                <strong><span style="font-size: 14pt; color: #ffff00">PATIENT INFORMATION FORM</span></strong></td>
            <td style="width: 25%; height: 30px;">
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px; text-align: right">
                <span style="font-size: 14pt; color: #ffffff">Enter Patient ID :</span></td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">
                    <asp:TextBox ID="T_Did" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                        Style="position: static" Width="225px" ForeColor="Red"></asp:TextBox></span></td>
            <td style="width: 25%; height: 30px; text-align: left">
                <span style="font-size: 14pt; color: #ffffff">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/img/hos51.jpg"
                    Style="position: static" Width="84px" /></span></td>
            <td style="width: 25%; height: 30px">
                </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: left;">
                </td>
            <td style="width: 25%; height: 30px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 23px; text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="50px" Style="position: static"
                    Width="681px">
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:DetailsView>
                </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="#80FFFF" BorderStyle="Dotted"
                Font-Bold="True" Font-Names="Times New Roman" Font-Size="14pt" ForeColor="White"
                Style="position: static" Text="Export to Word" /></td>
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

