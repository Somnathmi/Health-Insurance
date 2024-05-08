<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="contact.aspx.cs" Inherits="WebApplication2.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style14 {
            width: 676px;
            height: 34px;
        }
        .auto-style15 {
            width: 252px;
            height: 34px;
        }
        .auto-style16 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="100%">
        <tr>
            <td class="text1" style="text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td  style="text-align: center">
                <span style="font-family: Verdana; color:Navy ; font-size: 16pt;"><strong>
                Contact Us</strong></span></td>
        </tr>
     <tr>
         <td style="text-align: center">
             <strong><span style="color: red">(Please Fill The * Value)</span></strong></td>
     </tr>
        <tr>
            <td class="text1" style="height: 4px; text-align: center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="vertical-align:top ">
              <table align="center" border="0" cellpadding="3" cellspacing="3" class="greytextbigger" style="width: 85%; height: 180px">
                    <tr>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            25 RajaRam&nbsp;#09-26</td>
                        <td align="center" class="greytextbigger" rowspan="7" style="font-weight: bolder;
                            font-size: 10pt; width: 32px; font-family: Verdana; text-align: center" valign="top">
                <%--<asp:Image ID="img1" runat="server" ImageUrl="~/Images/contact1_green_2.jpg" Width="137px" Hight="135px" />--%>
                            <img src="NewFolder1/Images/contact1_green_2.jpg" Width="137px" Height="135px" />
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            width: 252px; font-family: Verdana; text-align: left" >
                            Name:</td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" >
                            <span style="color: red">*</span></td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" >
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center"   style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: center;">
                            palus, India 065128
                        </td>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt;
                            width: 252px; font-family: Verdana; text-align: left" >
                            Email Id:</td>
                        <td align="center" class="greytextbigger" style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" class="greytextbigger" style="font-weight: bolder; font-size: 10pt;
                            font-family: Verdana; text-align: left" valign="top">
                            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please enter valid Email" ForeColor="Red" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[!*@#$%^&amp;amp;+=]).*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; text-align: center;" class="auto-style9">
                            Hp : 90078654</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" class="auto-style10" >
                            Contact No.:</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top">
                            <asp:TextBox ID="txtcontact" runat="server"></asp:TextBox>
                            <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact" ErrorMessage="Please enter valid contact no" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; text-align: center;" class="auto-style14">
                            Fax : 10002413</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" class="auto-style15">
                            Subject:</td>
                        <td align="center" 
                           valign="top" class="auto-style16">
                           </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top" class="auto-style16">
                            <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center"  style="font-weight: bolder; font-size: 10pt; font-family: Verdana; text-align: center;" class="auto-style11">
                            Email : &nbsp;<a href="mailto:Contact@Medicalcare.com"><span style="font-size: 8pt;
                                color: #800000">Contact@Healthinsurance.com</span></a> <a href="mailto:Contact@Medicalcare.com">
                                    <span style="font-size: 8pt;
                                color: #800000"></span></a>
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" class="auto-style12" >
                            Message:</td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top" class="auto-style13">
                            <span style="color: #ff0000">*</span></td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top" class="auto-style13">
                            <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Width="202px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" style="font-weight: bolder; font-size: 10pt; font-family: Verdana; width: 676px; text-align: left;">
                        </td>
                        <td align="center" colspan="3" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: center" valign="top">
                            &nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" valign="top" style="font-weight: bolder; font-size: 10pt; font-family: Verdana; text-align: left;" class="auto-style5">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top" class="auto-style6">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            text-align: left" valign="top" class="auto-style7">
                        </td>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana;
                            " valign="top" class="auto-style7">
                            
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" BackColor="#0066FF" CssClass="auto-style8" ForeColor="White" Width="90px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" style="font-weight: bolder; font-size: 10pt; font-family: Verdana"
                            valign="top" colspan="5">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
