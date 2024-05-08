<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="order.aspx.cs" Inherits="WebApplication2.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            height: 33px;
            width: 469px;
        }
        .auto-style6 {
            width: 469px;
        }
        .auto-style7 {
            width: 147px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 3px;
            height: 26px;
        }
        .auto-style10 {
            width: 147px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center">
    <tr><td align ="center" class="auto-style5" >
        <strong><span style="font-size: 14pt; color: #3300ff; font-family: Verdana;">
            Order For Insurence Policy</span></strong></td></tr>
        <tr>
            <td class="auto-style6">
             <table>
        <tr>
            <td align="right" style="font-size: 10px; font-family: Verdana">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <strong>
                <asp:Label ID="Label1" runat="server" Text="PolicyId:"></asp:Label>
                </strong>
            </td>
            <td align="left" style="width: 3px">
                <%--<asp:Button ID="btnadd" runat ="server" Text ="ADD" OnClick="btnadd_Click"/>--%>
                <asp:DropDownList runat="server" DataSourceID="SqlDataSource1" DataTextField="idno" DataValueField="Id" Width="228px" Height="42px">
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addpolicy]"></asp:SqlDataSource>
            </td>
            <td align="left" class="auto-style7">
                <%--<asp:Button ID="btnCancel" runat ="server" Text ="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>--%>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCid" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 10px; font-family: Verdana">
                <strong>
                <asp:Label ID="Label2" runat="server" Text="PolicyName:"></asp:Label>
                </strong>
            </td>
            <td align="left" style="width: 3px">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" Height="48px" Width="217px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name] FROM [Addpolicy]"></asp:SqlDataSource>
            </td>
            <td align="left" class="auto-style7">
                <%--<asp:Button ID="btnCancel" runat ="server" Text ="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>--%>
            </td>
        </tr>
        <tr>
            <td align="right" style="font-size: 10px; font-family: Verdana">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <strong>
                <asp:Label ID="Label3" runat="server" Text="PolicyAmount:"></asp:Label>
                </strong>
            </td>
            <td align="left" style="width: 3px">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="Amount" DataValueField="Amount" Height="49px" Width="221px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Amount] FROM [Addpolicy]"></asp:SqlDataSource>
            </td>
            <td align="left" class="auto-style7">
                <%--<asp:Button ID="btnCancel" runat ="server" Text ="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>--%>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpamount" ErrorMessage="Required field" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>
                 <tr>
                     <td align="right" style="font-size: 10px; font-family: Verdana">
                         <strong>Catagory:</strong></td>
                     <td align="left" style="width: 3px">
                        
                         <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Amount" DataValueField="Amount" Height="48px" Width="224px">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Amount] FROM [Addpolicy]"></asp:SqlDataSource>
                     </td>
                     <td align="left" class="auto-style7">
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <br />
                   <tr>
                     <td align="right" style="font-size: 10px; font-family: Verdana" class="auto-style8">
                         </td>
                     <td align="left" class="auto-style9">
                        
                         </td>
                     <td align="left" class="auto-style10">
                     </td>
                 </tr>
                     </td>
                 </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style6">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="11pt" ForeColor="#3300FF"></asp:Label></td>
        </tr>
        <tr><td align="center" class="auto-style6" ><%--<asp:Button ID="btnCancel" runat ="server" Text ="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>--%><%--<asp:Button ID="btnCancel" runat ="server" Text ="Cancel" OnClick="btnCancel_Click" CausesValidation="False"/>--%>
            <asp:Button ID="Button1" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button1_Click" Text="Order" Height="35px" Width="97px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm3.aspx" Text="Back" />
            </td></tr>
    </table>
</asp:Content>
