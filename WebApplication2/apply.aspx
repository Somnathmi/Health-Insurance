<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="apply.aspx.cs" Inherits="WebApplication2.apply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    
        
        

 
       
 
        <div class="auto-style1">

            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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
                    <asp:TemplateField HeaderText="Apply Policy">
                                <ItemTemplate>
                                   <center>
                                    <asp:Button ID="Button6" runat="server" Text="Apply" BackColor="Red" ForeColor="White" PostBackUrl="~/order.aspx"  />

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

       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Addpolicy]"></asp:SqlDataSource>

       
    </center>
</asp:Content>
