<%@ Page Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Doctentry.aspx.vb" Inherits="Doctentry" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center"  style="width: 1000px; position: static">
        <tr>
            <td style="width: 25%; height: 30px;">
            </td>
            <td colspan="2" style="height: 30px; text-align: center;">
                <span style="font-size: 16pt; color: #ffff66"><strong>Doctor Entry Report</strong></span></td>
            <td style="width: 25%; height: 30px;">
            </td>
        </tr>
    <tr>
        <td style="width: 25%; height: 30px">
        </td>
        <td colspan="2" style="height: 30px; text-align: center">
        </td>
        <td style="width: 25%; height: 30px">
        </td>
    </tr>
        <tr>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Patient-ID :</span></td>
            <td style="width: 25%; height: 30px; text-align: left;">
                <span style="font-size: 14pt; color: #ffffff">
                    <asp:DropDownList ID="DD_pid" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="12pt" Style="position: static" Width="205px" AutoPostBack="True">
                        <asp:ListItem>Select</asp:ListItem>
                    </asp:DropDownList></span></td>
            <td style="width: 25%; height: 30px; text-align: right;">
                <span style="font-size: 14pt; color: #ffffff">Category :</span></td>
            <td style="width: 25%; height: 30px">
                <asp:DropDownList ID="DD_category" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                    Font-Size="12pt" Style="position: static" Width="200px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Allergies &amp; the Immune System</asp:ListItem>
                    <asp:ListItem>Asthma</asp:ListItem>
                    <asp:ListItem>Cancer &amp; Tumors</asp:ListItem>
                    <asp:ListItem>HIV Virus</asp:ListItem>
                    <asp:ListItem>Bones &amp; Muscles</asp:ListItem>
                    <asp:ListItem>Brain &amp; Nervous System</asp:ListItem>
                    <asp:ListItem>Ears, Nose, Throat/Speech &amp; Hearing</asp:ListItem>
                    <asp:ListItem>Heart &amp; Blood Vessels</asp:ListItem>
                    <asp:ListItem>Kidney &amp; Urinary System</asp:ListItem>
                    <asp:ListItem>Lungs &amp; Respiratory System</asp:ListItem>
                    <asp:ListItem>Sexual &amp; Reproductive System</asp:ListItem>
                    <asp:ListItem>Sleep Disorders</asp:ListItem>
                    <asp:ListItem>Body Basics</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    <tr>
        <td style="width: 25%; height: 30px; text-align: right">
            <span style="font-size: 14pt; color: #ffffff">Patient-Name :</span></td>
        <td style="width: 25%; height: 30px; text-align: left">
            <asp:TextBox ID="T_pname" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
        <td style="width: 25%; height: 30px; text-align: right">
            <span style="font-size: 14pt; color: #ffffff">Disease :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:DropDownList ID="DD_disease" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Size="12pt" Style="position: static" Width="200px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Starting Stage</asp:ListItem>
                <asp:ListItem>Middle Stage</asp:ListItem>
                <asp:ListItem>Final Stage</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Age :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_age" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Tablet Name :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_tname" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Contact Number :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_cno" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Quantity :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_qty" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Gender :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_gender" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Mor/Aft/Night :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:DropDownList ID="DD_man" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                Font-Size="12pt" Style="position: static" Width="205px">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Before</asp:ListItem>
                <asp:ListItem>After</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Address :</span></td>
        <td style="width: 25%;" rowspan="2" valign="top">
            <asp:TextBox ID="T_address" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Height="56px" Style="position: static" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Dose of Decadron :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_dose" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px">
        </td>
        <td style="width: 25%; height: 30px; text-align: right;">
            <span style="font-size: 14pt; color: #ffffff">Duration Days :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_duration" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
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
        <td style="width: 25%; height: 30px; text-align: right">
            <span style="font-size: 14pt; color: #ffffff">Doctor ID :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:DropDownList ID="DD_did" runat="server" Font-Bold="True" Font-Names="Times New Roman"
                        Font-Size="12pt" Style="position: static" Width="205px" AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
            </asp:DropDownList></td>
        <td style="width: 25%; height: 30px; text-align: right">
            <span style="font-size: 14pt; color: #ffffff">Doctor Name :</span></td>
        <td style="width: 25%; height: 30px">
            <asp:TextBox ID="T_dname" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Style="position: static" Width="200px"></asp:TextBox></td>
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
        <td style="width: 25%; height: 30px; text-align: right">
            <span style="font-size: 14pt; color: #ffffff">Doctor Description :</span></td>
        <td colspan="3" rowspan="3" valign="top">
            <asp:TextBox ID="T_desc" runat="server" Font-Names="Times New Roman" Font-Size="12pt"
                Height="91px" Style="position: static" TextMode="MultiLine" Width="701px"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="width: 25%; height: 30px">
        </td>
    </tr>
    <tr>
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
            <table style="width: 239px; position: static">
                <tr>
                    <td style="width: 100px; height: 30px">
                        <asp:Button ID="Bsave" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Bold="True"
                            Font-Names="Times New Roman" Font-Size="12pt" ForeColor="Yellow" Style="position: static"
                            Text="SUBMIT" Width="104px" /></td>
                    <td style="width: 100px; height: 30px">
                        <asp:Button ID="Breset" runat="server" BackColor="Black" BorderStyle="Dotted" Font-Bold="True"
                            Font-Names="Times New Roman" Font-Size="12pt" ForeColor="Yellow" Style="position: static"
                            Text="RESET" Width="104px" /></td>
                </tr>
            </table>
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

