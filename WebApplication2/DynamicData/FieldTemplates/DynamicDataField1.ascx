<%@ Control Language="C#" CodeBehind="DynamicDataField1.ascx.cs" Inherits="WebApplication2.DynamicData.FieldTemplates.DynamicDataField1" %>

<asp:Literal runat="server" ID="Literal1" Text="<%# FieldValueString %>" />
<table style="background-color: teal; width: 393px;">
    <tr>
        <td align="center" style="width: 507px; color: yellow; background-color: olive">
            <span style="font-size: 16pt">
            <strong><span style="color: azure">Change Your Password?</span></strong> </span>
        </td>
    </tr>
    <tr>
    </tr>
    <tr><td align ="center" style="width: 507px">
        <span style="color: azure">
        <span style="font-size: 10pt;"></span></span></td></tr>
        <td style="font: smallcaption; width: 507px; color: aqua; background-color: teal">
            <table style="width: 393px; height: 43px;">
                
                <tr>
                    <td align="right" style="width: 699px; font-weight: bold; font-size: 10px; font-family: Verdana; height: 27px;">
                        <strong><span style="color: #ff6600">Enter Your Old PassWord:</span></strong>
                    </td>
                    <td align="left" style="width: 148px; height: 27px;">
                        <asp:TextBox ID="txtpwd" runat="server" Width="176px" TextMode="Password" /></td>
                    <td align="left" style="width: 6px; height: 27px;">
                        <asp:RequiredFieldValidator ID="rfvpwd" ErrorMessage="U should Enter Password." Text="*"
                            runat="server" ControlToValidate="txtpwd" Width="8px"></asp:RequiredFieldValidator></td>
                </tr>
                <tr><td align ="right" style="font-weight: bold; font-size: 10px; width: 699px; font-family: Verdana" >
                    <strong><span style="color: darkorange"><span style="color: #ff6633">Enter Your New PassWord</span>:</span></strong></td><td align ="left" style="width: 148px" ><asp:TextBox ID="txtnewpwd" runat ="server" Width="176px" TextMode="Password" ></asp:TextBox></td><td align ="left" style="width: 6px" ><asp:RequiredFieldValidator ID="rfvnew" runat ="server" Text="*" ControlToValidate="txtnewpwd"></asp:RequiredFieldValidator></td></tr>
                            </table>
        </td>
    <tr><td align ="center" style="width: 507px"><asp:Label ID="lblMsg" runat ="server" Font-Bold="True" ForeColor="#33FFFF" ></asp:Label></td></tr>
    <tr><td align =center style="width: 507px" ><asp:Button ID="btnlogin" Text ="Submit" runat ="server" BackColor="Olive" BorderColor="#C0FFFF" Font-Bold="True" ForeColor="ButtonHighlight" OnClick="btnlogin_Click" /></td></tr>
</table>