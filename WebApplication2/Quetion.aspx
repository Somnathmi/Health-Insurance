<%@ Page Title="" Language="C#" MasterPageFile="Addmin1.Master" AutoEventWireup="true" Codefile="Quetion.aspx.cs" Inherits="WebApplication2.Quetion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div>
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="203px" Width="497px" BackColor="#FF6600">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="askqution" HeaderText="User Question" SortExpression="askqution" />
                <asp:TemplateField HeaderText="Reply Comment">
                                <ItemTemplate>
                                   <center>
                                    <asp:Button ID="Button6" runat="server" Text="Reply" BackColor="Red" ForeColor="White" PostBackUrl="replyuser.aspx"  />

                                       </center>
                                </ItemTemplate>

                    </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Ask]"></asp:SqlDataSource>
        <asp:Button ID="Button7" runat="server" PostBackUrl="~/WebForm2.aspx" Text="Back" />
    </div>
        </center>

</asp:Content>
