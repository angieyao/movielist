<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mylist.aspx.cs" Inherits="mylist" %>

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
    p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;
	        width: 134px;
            margin-left: 0cm;
            margin-right: 0cm;
            margin-top: 0cm;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="MsoNormal">
            <div class="auto-style1">
                <span class="auto-style2"><strong>--My List--</strong></span></div>
            <br />
            Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            Type:&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            Country: <asp:TextBox ID="TextBox3" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" BorderStyle="None"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert!" BorderColor="#666699" BorderStyle="Double" />
            &nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Edit My List<p class="MsoNormal">
                <span lang="EN-US" style="font-family:Wingdings;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-char-type:symbol;mso-symbol-font-family:
Wingdings"><span style="mso-char-type:symbol;mso-symbol-font-family:Wingdings">ò</span></span><span lang="EN-US"><o:p><span lang="EN-US" style="font-family:Wingdings;mso-ascii-font-family:
Calibri;mso-ascii-theme-font:minor-latin;mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;mso-char-type:symbol;mso-symbol-font-family:
Wingdings"><span style="mso-char-type:symbol;mso-symbol-font-family:Wingdings">òòòòòò</span></span></o:p></span></p>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" DeleteCommand="DELETE FROM [s1071736Final] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071736Final] ([Id], [Title], [Type], [Country], [Year]) VALUES (@Id, @Title, @Type, @Country, @Year)" SelectCommand="SELECT * FROM [s1071736Final]" UpdateCommand="UPDATE [s1071736Final] SET [Title] = @Title, [Type] = @Type, [Country] = @Country, [Year] = @Year WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox5" Name="Id" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="TextBox1" Name="Title" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="Type" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox3" Name="Country" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox4" Name="Year" PropertyName="Text" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Year" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="15">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT * FROM [s1071736Final] WHERE ([Id] = @Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="index.html">Back to index</asp:HyperLink>
        </div>
    </form>
</body>
</html>
