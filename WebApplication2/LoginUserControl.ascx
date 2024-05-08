<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginUserControl.ascx.cs" Inherits="WebApplication2.login" %>
<style type="text/css">
    .auto-style2 {
        width: 613px;
    }
    .auto-style3 {
        width: 142px;
    }
    .auto-style5 {
        width: 447px;
    }
    .auto-style6 {
        width: 10px;
    }
    .auto-style7 {
        margin-left: 0px;
    }
</style>
<div style="text-align:center">
    
    <div style="border:1px; margin-top:130px; border-color:navy; border-style:solid; width:142px; height:150px">
            <table class="auto-style2">
                <tr bgcolor="#2FB5D2">
                    <td align="right" colspan="3" style="text-align: center">
                        <strong><span style="font-family: sans-serif; color:navy">Member
           LogIn</span></strong></td>
                </tr>
                <tr>
                    <td align="right" colspan="3">
                    </td>
                </tr>
                <tr>
                    <td align="left" style="font-weight: bold; font-size: 9pt; color: navy; font-family: verdana; " class="auto-style3">
                        User Name:
                    </td>
                    <td align="left" class="auto-style5">
                        <asp:TextBox ID="txtuid" runat="server" /></td>
                    <td align="left" class="auto-style6">
                        <asp:RequiredFieldValidator ID="rfvuid" ErrorMessage="U should Enter Username." Text="*"
                            runat="server" ControlToValidate="txtuid" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="left" style="font-weight: bold; font-size: 9pt; color: navy; font-family: verdana; " class="auto-style3">
                        Password:
                    </td>
                    <td align="left" class="auto-style5">
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="149px" />
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="Use combination of letters , digits and symbols minimum 8 character" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[!*@#$%^&amp;amp;+=]).*"></asp:RegularExpressionValidator>
                    </td>
                    <td align="left" class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" colspan="3">
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="auto-style7"  />
                    </td>
                    <td align="left" class="auto-style6">
                    </td>
                </tr>
                <tr>
                    <td align="right" colspan="3" style="text-align: center">
            <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#C04000"></asp:Label></td>
                </tr>
            </table>
</div> 
</div> 