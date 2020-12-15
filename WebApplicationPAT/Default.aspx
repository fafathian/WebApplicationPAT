<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplicationPAT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <div class="Container" style="height: 579px">
        <div class="container text-center" style="background-color: #800000; color: #FFFFFF; font-size: xx-large; margin-top: 100px;">
            <asp:Label ID="Label3" runat="server" Text="User Regristration Form"></asp:Label>
        </div>
        <div class="row">
            <div class="col" style="margin-top: 40px; margin-left: 40px;">
                <asp:Label ID="Label4" runat="server" Text="UserID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
            </div>
            <div class="col" style="margin-top: 10px; margin-left: 40px;">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div class="col" style="margin-top: 10px;margin-left: 40px;">
                <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div class="col" style="margin-top: 40px; margin-left: 40px;">
                <asp:Button ID="Button1" runat="server" Text="Insert" Width="88px" OnClick="Button1_Click" />
        
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="80px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" Width="80px" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" OnClientClick="return confirm('Are you sure to delete?')" OnClick="Button4_Click" Text="Delete" Width="73px" />
                <br />
        
                <br />
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="#003300"></asp:Label>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CaptionAlign="Top" CellPadding="2" ForeColor="Black" GridLines="None" Width="369px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </div>
            
            
        </div>
        
        
        
    </div>

    

</asp:Content>
