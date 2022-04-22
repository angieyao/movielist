<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
        <div style="position: relative; top: -1px; left: 0px;">
            <div class="auto-style1">
                <strong>Log in and make My List!</strong></div>
            <br />
            Account:<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None"></asp:TextBox>
            (s1071736)<br />
            Password:<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
            (1071736)<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" BorderColor="#666699" BorderStyle="Double" />
            (登入才有權限)<br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" SelectCommand="SELECT * FROM [s1071736AP]" DeleteCommand="DELETE FROM [s1071736AP] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071736AP] ([Id], [password]) VALUES (@Id, @password)" UpdateCommand="UPDATE [s1071736AP] SET [password] = @password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="Id" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox5" Name="password" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            Sign Up NOW - Quick and Simple<br />
            <br />
            Name:<span class="auto-style2"><asp:TextBox ID="TextBox3" runat="server" EnableTheming="False" BorderStyle="None"></asp:TextBox>
            </span>
            </span>
            <br />
            Account:<span class="auto-style2"><asp:TextBox ID="TextBox4" runat="server" EnableTheming="True" BorderStyle="None"></asp:TextBox>
            </span>
            </span>
            <br />
            Password:<span class="auto-style2"><asp:TextBox ID="TextBox5" runat="server" TextMode="Password" BorderStyle="None"></asp:TextBox>
            </span>
            <br />
            <span class="auto-style2">
            <asp:Label ID="Label2" runat="server"></asp:Label>
            </span>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sign up" CssClass="auto-style3" BorderColor="#666699" BorderStyle="Double" />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="index.html">Back to index</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:1082netdbBConnectionString %>" DeleteCommand="DELETE FROM [s1071736AP] WHERE [Id] = @Id" InsertCommand="INSERT INTO [s1071736AP] ([Id], [password]) VALUES (@Id, @password)" SelectCommand="SELECT * FROM [s1071736AP] WHERE (([Id] = @Id) AND ([password] = @password))" UpdateCommand="UPDATE [s1071736AP] SET [password] = @password WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="TextBox2" Name="password" PropertyName="Text" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="Id" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
