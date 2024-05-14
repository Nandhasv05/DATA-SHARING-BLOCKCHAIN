<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="black" >
    <form id="form1" runat="server">
    <div>
        <table align="center"  style="width: 1000px; position: static">
            <tr>
                <td colspan="4" style="height: 33px">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/hospital-banner10.jpg" Style="position: static" Width="1000px" Height="225px" /></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 33px">
                    <marquee><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="14pt" ForeColor="White" Style="position: static" Text="A Secure Data Sharing and Authorized Searchable Framework for e-Healthcare System"></asp:Label></marquee></td>
            </tr>
            <tr>
                <td colspan="2" style="height: 33px">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/img/phr.jpg" Style="position: static" Height="250px" Width="499px" /></td>
                <td colspan="2" style="height: 33px" valign="middle">
                    <table style="width: 493px; position: static">
                        <tr>
                            <td colspan="2" style="height: 30px; text-align: center;">
                                <strong><span style="font-size: 14pt; color: #ffff33; font-family: Monotype Corsiva">LOGIN FORM </span></strong></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 30px; text-align: center">
                                <strong><span style="font-size: 14pt; color: #ffffff;">User-Name:</span></strong></td>
                            <td style="width: 88px; height: 30px">
                                <asp:TextBox ID="T_user" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                                    Style="position: static" Width="185px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 30px">
                            </td>
                            <td style="width: 88px; height: 30px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 30px; text-align: center">
                                <strong><span style="font-size: 14pt; color: #ffffff;">Hash:</span></strong></td>
                            <td style="width: 88px; height: 30px">
                                <asp:TextBox ID="T_pass" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                                    Style="position: static" Width="187px" TextMode="Password"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 30px">
                            </td>
                            <td style="width: 88px; height: 30px" valign="middle">
                                <table style="width: 179px; position: static; height: 39px; text-align: center;">
                                    <tr>
                                        <td style="width: 100px; height: 35px">
                                            <asp:Button ID="Button1" runat="server" BorderStyle="Dashed" Font-Bold="True" Font-Names="Times New Roman"
                                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="SUBMIT" Width="94px" BackColor="Black" /></td>
                                        <td style="width: 100px; height: 35px">
                                            <asp:Button ID="Button2" runat="server" BorderStyle="Dashed" Font-Bold="True" Font-Names="Times New Roman"
                                                Font-Size="12pt" ForeColor="Yellow" Style="position: static" Text="RESET" Width="94px" BackColor="Black" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 30px">
                            </td>
                            <td style="width: 88px; height: 30px; text-align: center;">
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                                    Font-Size="14pt" Style="position: static" Text="." ForeColor="#FFFFFF"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 25%; height: 33px">
                    <span style="font-size: 14pt; color: #66ffff"><strong>COPYRIGHTS@2024</strong></span></td>
                <td style="width: 26%; height: 33px">
                </td>
                <td style="width: 37%; height: 33px">
                </td>
                <td style="width: 25%; height: 33px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
