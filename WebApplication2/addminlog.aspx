<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="addminlog.aspx.cs" Inherits="WebApplication2.addminlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table align="center" >
         <body>
        <tr>
            
            <td class="auto-style7">
               
                
                <div class="auto-style5" style="color:">
            <h1 style="color: #008080" class="auto-style5" >Admin Login</h1>
            
            <div class="auto-style5">
                 <label><strong>Username:</strong></label>&nbsp;&nbsp;

    <asp:TextBox ID="txtuid" runat="server" Height="32px" Width="179px" requrid></asp:TextBox>
    <br />
                 <br/ >
                
           
            </div>
                    <br />
            <div class="auto-style5">
                 <label><strong>Password</strong>:</label>&nbsp;&nbsp;

    <asp:TextBox ID="txtpwd" runat="server" Height="32px" Width="179px" TextMode="Password" requrid></asp:TextBox>
    <br />
    <br />
                </div>
                 
                    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#2691d9" color="white"  ForeColor="White" Height="39px" Width="84px" OnClientClick="xf" ValidateRequestMode="Enabled" />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Back" />
           
        </div>
                
            </td>
             <td align="right" colspan="3" style="text-align: center" class="auto-style6">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#C04000"></asp:Label></td>
                </tr>
        </tr>
    </table>
</asp:Content>
