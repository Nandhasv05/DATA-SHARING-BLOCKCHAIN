<%@ Page Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Preport.aspx.vb" Inherits="Preport" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 1000px; position: static">
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
                <span style="font-size: 14pt; color: #ffffff"></span></td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Enter Patient ID :</span></td>
            <td style="width: 25%; height: 30px; text-align: left">
                <span style="font-size: 14pt; color: #ffffff">
                    <asp:TextBox ID="T_Did" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                        Style="position: static" Width="225px" ForeColor="Red"></asp:TextBox></span></td>
            <td style="width: 25%; height: 30px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/img/hos51.jpg"
                    Style="position: static" Width="84px" /></td>
        </tr>
        <tr>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px">
            </td>
            <td style="width: 25%; height: 30px; text-align: center;">
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
            <td style="width: 25%; height: 38px">
            </td>
            <td style="width: 25%; height: 38px">
            </td>
            <td style="width: 25%; height: 38px">
            </td>
            <td style="width: 25%; height: 38px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 23px; text-align: center">
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC"
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="131px" Style="position: static"
                    Width="694px">
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

