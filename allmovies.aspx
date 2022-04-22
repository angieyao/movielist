<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allmovies.aspx.cs" Inherits="allmovies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         #form1 {
            text-align: justify;
            font-family: "MS PGothic";
            margin:30px; padding: 55px;
            background-repeat: repeat; background-image: url('image/polishwood.png'); 
        }
        .auto-style1 {
            font-size: large;
            font-weight: bold;
            font-family: "MS PGothic";
            text-align: center;
            border-style: solid;
            border-width: thin;
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1">
                <strong>90-92th Academy Awards</strong></div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT * FROM [s1071736Final]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="7" style="text-align: center" Width="726px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">
                <Columns>
                    <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="image/{0}.jpg" HeaderText="Image">
                        <ControlStyle Width="90" Height="110" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="index.html">Back to index</asp:HyperLink>
        </div>
    </form>
</body>
</html>
