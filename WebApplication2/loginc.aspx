<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="loginc.aspx.cs" Inherits="WebApplication2.loginc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            margin-right: 0px;
        }
        .auto-style7 {
            width: 350px;
        }
        .auto-style8 {
            margin-right: 0px;
            width: 540px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style6" >
        <tr>
            
            <td class="auto-style7">
               
                
                <div class="auto-style5" style="color:">
            <h1 style="color: #008080" class="auto-style5" >Login</h1>
            
            <div class="auto-style5">
                 <label><strong>Username:</strong></label>&nbsp;&nbsp;

    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="179px" ></asp:TextBox>
    <br />
                 <br/ >
                
           
            </div>
                    <br />
            <div class="auto-style5">
                 <label><strong>Password</strong>:</label>&nbsp;&nbsp;

    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="179px" Type="Password" TextMode="Password"></asp:TextBox>
    <br />
    <br />
                </div>
                 
                    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#2691d9" color="white"  ForeColor="White" Height="39px" Width="84px" OnClientClick="xf" ValidateRequestMode="Enabled" />
                    <br />
                    Dont have an account?<a href="Registion.aspx"> Register</a>
           
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Back" />
           
        </div>
                
            </td>
             <td align="right" colspan="3" style="text-align: center" class="auto-style8">
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Use combination of letters , digits and symbols minimum 8 character" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[!*@#$%^&amp;amp;+=]).*"></asp:RegularExpressionValidator>
            </td>
                </tr>
        </tr>
    </table>
</asp:Content>
