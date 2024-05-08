<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="feed.aspx.cs" Inherits="WebApplication2.feed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            width: 150px;
        }
        .auto-style8 {
            width: 398px;
        }
    </style>
</asp:Content>

    

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style8">
        <tr>
            <td align="left" colspan="2" style="font-weight: bolder; font-size: 8pt; font-family: Verdana;
                text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                User Name:</td>
            <td align="left" class="auto-style7">
                <asp:TextBox ID="txtActNo" runat="server" Width="201px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                Email Id:</td>
            <td align="left" class="auto-style7">
                <asp:TextBox ID="txtMail" runat="server" MaxLength="50" Width="201px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Please enter valid Email" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[!*@#$%^&amp;amp;+=]).*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 8pt; width: 100px; font-family: Verdana">
                Feedback:</td>
            <td align="left" class="auto-style7">
                <asp:TextBox ID="txtMsg" runat="server" Height="69px" MaxLength="200" TextMode="MultiLine"
                    Width="201px"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">
               
                
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#0066FF" ForeColor="White" Width="96px" Height="40px" />
               
                
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Width="297px"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Back" />
            </td>
        </tr>
    </table>
</asp:Content>
