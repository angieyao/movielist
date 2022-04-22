<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="reviews" %>

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
        <div class="auto-style1">
            REVIEWS<br /></div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" DeleteCommand="DELETE FROM [s1071736REVIEWS] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071736REVIEWS] ([Id], [Name], [Movie], [Reviews], [DateTime]) VALUES (@Id, @Name, @Movie, @Reviews, @DateTime)" SelectCommand="SELECT * FROM [s1071736REVIEWS] WHERE ([Movie] = @Movie)" UpdateCommand="UPDATE [s1071736REVIEWS] SET [Name] = @Name, [Movie] = @Movie, [Reviews] = @Reviews, [DateTime] = @DateTime WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="Movie" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Reviews" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="DateTime" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Movie" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Movie" Type="String" />
                    <asp:Parameter Name="Reviews" Type="String" />
                    <asp:Parameter Name="DateTime" Type="DateTime" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <br />
        Id:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
        Name:<asp:TextBox ID="TextBox2" runat="server" BorderStyle="None"></asp:TextBox>
        <br />
        <br />
        Movie:<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Parasite</asp:ListItem>
            <asp:ListItem>Ford v Ferrari</asp:ListItem>
            <asp:ListItem>The Irish Man</asp:ListItem>
            <asp:ListItem>Jojo Rabbit</asp:ListItem>
            <asp:ListItem>Joker</asp:ListItem>
            <asp:ListItem>Little Women</asp:ListItem>
            <asp:ListItem>Marriage Story</asp:ListItem>
            <asp:ListItem>Once Upon a Time in Hollywood</asp:ListItem>
            <asp:ListItem>1917</asp:ListItem>
            <asp:ListItem>Green Book</asp:ListItem>
            <asp:ListItem>Black Panther</asp:ListItem>
            <asp:ListItem>BlacKkKlansman</asp:ListItem>
            <asp:ListItem>Bohemian Rhapsody</asp:ListItem>
            <asp:ListItem>The Favourite</asp:ListItem>
            <asp:ListItem>Roma</asp:ListItem>
            <asp:ListItem>A Star Is Born</asp:ListItem>
            <asp:ListItem>Vice</asp:ListItem>
            <asp:ListItem>The Shape of Water</asp:ListItem>
            <asp:ListItem>Call Me by Your Name</asp:ListItem>
            <asp:ListItem>Darkest Hour</asp:ListItem>
            <asp:ListItem>Dunkirk</asp:ListItem>
            <asp:ListItem>Get Out</asp:ListItem>
            <asp:ListItem>Lady Bird</asp:ListItem>
            <asp:ListItem>Phantom Thread</asp:ListItem>
            <asp:ListItem>The Post</asp:ListItem>
            <asp:ListItem>Three Billboards Outside Ebbing, Missouri</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
            Reviews:<br />
            <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None" Height="123px" TextMode="MultiLine" Width="218px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BorderColor="#666699" BorderStyle="Double" Height="35px" OnClick="Button1_Click" Text="OK" Width="66px" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" Width="712px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Movie" HeaderText="Movie" SortExpression="Movie" />
                <asp:BoundField DataField="Reviews" HeaderText="Reviews" SortExpression="Reviews" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        
        <br />
        <a href="index.html">Back to index</a></form>
</body>
</html>
