<%@ Page Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Hackerlist.aspx.vb" Inherits="Hackerlist" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong><span style="font-size: 16pt; color: #660066"><span style="color: #ffff66">Hacker List</span><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataSourceID="SqlDataSource1" Style="position: static"
            Width="512px" Height="77px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <Columns>
                <asp:BoundField DataField="login_name" HeaderText="login_name" SortExpression="login_name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="date_time" HeaderText="date_time" SortExpression="date_time" />
            </Columns>
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PHRConnectionString %>"
            SelectCommand="SELECT * FROM [Hacker]"></asp:SqlDataSource>
    </span></strong>
</asp:Content>

