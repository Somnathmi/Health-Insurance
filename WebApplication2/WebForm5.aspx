<%@ Page Title="" Language="C#" MasterPageFile="~/Addmin1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table cellpadding ="0" cellspacing ="0">
            <tr>
                <td align="center">
                    <span style="font-size: 16pt; color: navy; font-family: Verdana;">
                        <strong>Add Policy</strong></span></td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Policy Type Name:</span></strong></td>
                            <td align="left">
                                <asp:TextBox ID="txtPtypeName" runat="server"></asp:TextBox></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Text="*"
                                ControlToValidate ="txtPtypeName"     ErrorMessage="U should Enter policyName"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Policy Desc:</span></strong></td>
                            <td align="left">
                                <asp:TextBox ID="txtPDesc" runat="server"></asp:TextBox></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="*"
                                 ControlToValidate ="txtPDesc"    ErrorMessage="U should Enter policyDesc"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Policy Amount:</span></strong></td>
                            <td align="left"><asp:TextBox ID="txtAmt" runat ="server" OnKeypress="return onlyNumbersdot(event)" ></asp:TextBox>
                            </td>
                            <td align="left"><asp:RequiredFieldValidator ID="rfvamt" ControlToValidate ="txtamt" Text="*" runat ="server" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt"><span style="font-family: Verdana">Policy</span>
                                    <span style="font-family: Verdana">EMI:</span></span></strong></td>
                            <td align="left">
                            <asp:TextBox ID="txtEmi" runat ="server" OnKeypress="return onlyNumbersdot(event)"></asp:TextBox>
                            </td>
                            <td align="left">
                            <asp:RequiredFieldValidator ID="rfvemi" ControlToValidate ="txtEmi" Text="*" runat ="server" Width="1px" ></asp:RequiredFieldValidator></tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Company Id:</span></strong></td>
                            <td align="left">
                                <asp:DropDownList  ID="ddlCId" runat="server" Width="144px"/></td>
                            <td align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="*" ControlToValidate ="ddlCId"
                                    ErrorMessage="U should Enter CompanyId" InitialValue="--Select--"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana">Medical Id:</span></strong></td>
                            <td align="left"><asp:TextBox ID="txtMedical" runat ="server"></asp:TextBox>
                            </td>
                            <td align="left">
                            <asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                    &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr><td align ="center" ><asp:Label ID="lblMsg" runat ="server" Font-Bold="True" Font-Size="11pt" ForeColor="#FF0000"></asp:Label></td></tr>
            <tr><td align ="center" ><asp:Button ID="btnAdd" runat ="server" Text ="ADD" Font-Bold="True" Font-Italic="False" OnClick="btnAdd_Click" Width="71px" Font-Names="Verdana" Font-Size="X-Small" /><asp:Button ID="btnCancel" Text ="Cancel" runat="server" CausesValidation="False" Font-Bold="True" Font-Italic="False" OnClick="btnCancel_Click" Font-Names="Verdana" Font-Size="X-Small" /></td></tr>
        </table>
    </center>
</asp:Content>
