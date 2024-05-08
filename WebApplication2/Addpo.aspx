<%@ Page Title="" Language="C#" MasterPageFile="Addmin1.Master" AutoEventWireup="true" Codefile="Addpo.aspx.cs" Inherits="WebApplication2.Addpo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 435px;
        }
        .auto-style5 {
            width: 321px;
        }
        .auto-style6 {
            width: 523px;
        }
    </style>
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
                    <table class="auto-style6">
                        <tr>
                            <td align="right">
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Id:</span></strong></td>
                            <td align="left" class="auto-style5">
                                <asp:TextBox ID="txtcid" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcid" Display="Dynamic" ErrorMessage="Required field" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </td>
                            <td align="left">
                                <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">Policy Name:</span></strong></td>
                            <td align="left" class="auto-style5">
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                            <td align="left">
                                <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">&nbsp;Category:</span></strong></td>
                            <td align="left" class="auto-style5">
                                <asp:TextBox ID="txtcat" runat="server"></asp:TextBox></td>
                            <td align="left">
                                <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">
                                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                Policy Amount:</span></strong></td>
                            <td align="left" class="auto-style5"><asp:TextBox ID="txtAmt" runat ="server"  ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAmt" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                            <td align="left"><%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt"><span style="font-family: Verdana">Policy</span>
                                    <span style="font-family: Verdana">EMI:</span></span></strong></td>
                            <td align="left" class="auto-style5">
                            <asp:TextBox ID="txtEmi" runat ="server" OnKeypress="return onlyNumbersdot(event)"></asp:TextBox>
                            </td>
                            <td align="left">
                                <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%></tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana;">&nbsp;Tenure:</span></strong></td>
                            <td align="left" class="auto-style5">
                                <asp:TextBox ID="txtten" runat="server"></asp:TextBox>
                            </td>
                            <td align="left">
                                <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%></td>
                        </tr>
                        <tr>
                            <td align="right">
                                <strong><span style="font-size: 10pt; font-family: Verdana">&nbsp;Creation Date:</span></strong></td>
                            <td align="left" class="auto-style5"><asp:TextBox ID="txtdate" runat ="server" TextMode="Date"></asp:TextBox>
                            </td>
                            <td align="left">
                            <%--<asp:RequiredFieldValidator ID="medical" runat ="server" Text ="*" ControlToValidate ="txtMedical" ></asp:RequiredFieldValidator>--%>
                            </td>
                        </tr>
                    </table>
                    &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
            <tr><td align ="center" ><asp:Label ID="lblMsg" runat ="server" Font-Bold="True" Font-Size="11pt" ForeColor="#FF0000"></asp:Label></td></tr>
            <tr><td class="auto-style4" >
               

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" BackColor="#0066FF" ForeColor="White" Height="44px" Width="80px" />
                </td></tr>
        </table>
        <br />


        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="idno" HeaderText="Policy Id" SortExpression="idno" />
                <asp:BoundField DataField="Name" HeaderText="Policy Name" SortExpression="Name" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Amount" HeaderText="Policy Amount" SortExpression="Amount" />
                <asp:BoundField DataField="EMI" HeaderText="Policy EMI" SortExpression="EMI" />
                <asp:BoundField DataField="Tenure" HeaderText="Tenure" SortExpression="Tenure" />
                <asp:BoundField DataField="Date" HeaderText="Policy Date" SortExpression="Date" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addpolicy]"  UpdateCommand="update Addpolicy set Name=@Name, Category=@Category, Amount=@Amount, EMI=@EMI , Tenure=@Tenure , Date=@Date where idno=@idno  "  DeleteCommand="delete from Addpolicy  where id=@id  " ></asp:SqlDataSource>


        <br />
        <asp:Button ID="Button2" runat="server" PostBackUrl="~/WebForm2.aspx" Text="Back" />


    </center>
</asp:Content>
