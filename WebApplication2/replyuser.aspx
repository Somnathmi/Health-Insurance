<%@ Page Title="" Language="C#" MasterPageFile="Addmin1.Master" AutoEventWireup="true" Codefile="replyuser.aspx.cs" Inherits="WebApplication2.replyuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="auto-style4">
        <asp:Panel ID="Panel1" runat="server" Height="66px">
           <h1> <strong>Reply to User<br />
            <br />
            </strong>
               </h1>
            <asp:TextBox ID="TextBox1" runat="server" Height="94px" Width="350px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Reply" BackColor="#0066FF" ForeColor="White" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm2.aspx" Text="Back" />
        </asp:Panel>
    </div>

</asp:Content>
