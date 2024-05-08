<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="Registion.aspx.cs" Inherits="WebApplication2.Registion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       

    .auto-style5 {
            width: 221px;
        }
       

        .auto-style6 {
            width: 192px;
        }
        .auto-style7 {
            text-align: left;
        }
       

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <br />
    <br />
       
    <center>
        <strong><span style="font-size: 14pt"></span></strong>
   <br />
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td align="right" colspan="3" style="font-weight: bold; font-family: Verdana; " class="auto-style7">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Register</td>
                            <hr />
                        </tr>
                        <tr>
                            <td style="width: 95px; font-weight: bold; font-family: Verdana; font-size: 8pt;" align="right">
                                &nbsp;
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                <span style="font-size: 10pt">First Name:</span></td>
                            <td align ="left" class="auto-style6"  >
                                <asp:TextBox ID="txtfname" runat="server" Width="217px" Height="25px" />
                                
                            </td>
                            <td class="auto-style5">

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="Required field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <br />
                        <tr>
                            <td style="width: 95px; font-weight: bold; font-family: Verdana; font-size: 8pt;" align="right">
                                <span style="font-size: 10pt">
                                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                Last Name</span>:</td>
                            <td align ="left" class="auto-style6" >
                                <asp:TextBox ID="txtlname" runat="server" Width="218px" Height="29px" /></td>
                            <td class="auto-style5">
                                <%--<asp:RequiredFieldValidator ID="rfvphoneno" runat="server" Text="*" ControlToValidate="txtlname" ErrorMessage="Enter last name" />--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlname" Display="Dynamic" ErrorMessage="Required field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td  valign ="top" style="width: 95px; font-weight: bold; font-family: Verdana; font-size: 8pt;" align="right">
                                <span style="font-size: 10pt">
                                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                User Name:</span></td>
                            <td align ="left" class="auto-style6" >
                                <asp:TextBox ID="txtusername" runat="server" Height="16px" Width =216px /></td>
                            <td class="auto-style5">
                                <%--<asp:RequiredFieldValidator ID="rfvaddress" runat="server" Text="*" ControlToValidate ="txtusername" ErrorMessage ="Enter user name" />--%>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="Required field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                        </tr>
                        <tr>
                            <td style="width: 95px; font-weight: bold; font-family: Verdana; font-size: 8pt;" align="right">
                                <span style="font-size: 10pt">&nbsp;Password:</span></td>
                            <td align ="left" class="auto-style6" >
                                <asp:TextBox ID="txtpwd" runat="server" Width="218px" Height="27px" TextMode="Password" /></td>
                            <td align="left" class="auto-style5">
                                <%--<asp:RequiredFieldValidator ID="rfvlogin" runat="server" Text="*" ControlToValidate ="txtpwd" ErrorMessage ="U should enter loginid" />--%>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="Use combination of letters , digits and symbols minimum 8 character" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[!*@#$%^&amp;amp;+=]).*"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 95px; font-weight: bold; font-family: Verdana; font-size: 8pt;" align="right">
                                <span style="font-size: 10pt">&nbsp;Address:</span></td>
                            <td align ="left" class="auto-style6" >
                                <asp:TextBox ID="txtaddress" runat="server" Width="223px" TextMode="MultiLine" Height="39px" /></td>
                            <td class="auto-style5">
                                <%--<asp:RequiredFieldValidator ID="rfvdisgn"  ErrorMessage ="U should enter address" ControlToValidate ="txtaddress" runat="server" Text="*" />--%></td>
                        </tr>
                        
                        </table>
                </td>
                <td style="width: 146px">
                    <%--<asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="153px" />--%>
                </td>
            </tr>
            
        </table>
     
                    <table>
                        <tr><td align ="center" style="width: 495px" ><asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click1" BackColor="#0066FF" ForeColor="White" Width="124px" Height="48px"   />
                       </td>
                        </tr>
                        
                    </table>
        <br/>
    </center>
        <table>
                        <tr>
                            <td class="auto-style3">
        <asp:Button ID="Button2" runat="server" Text="Back" PostBackUrl="~/WebForm3.aspx" Height="39px" Width="57px" />
                                &nbsp;</td>
                            </tr>
            </table>
    </asp:Content>
