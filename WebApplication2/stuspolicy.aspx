﻿<%@ Page Title="" Language="C#" MasterPageFile="Addmin1.Master" AutoEventWireup="true" Codefile="stuspolicy.aspx.cs" Inherits="WebApplication2.stuspolicy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
       
        

       
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="318px" Width="1047px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="PolicyId" HeaderText="Policy Id" SortExpression="PolicyId" />
                <asp:BoundField DataField="PolicyName" HeaderText="Policy Name" SortExpression="PolicyName" />
                <asp:BoundField DataField="PolicyAmount" HeaderText="Policy Amount" SortExpression="PolicyAmount" />
                <asp:BoundField DataField="Catagory" HeaderText="Catagory" SortExpression="Catagory" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [orderc]" UpdateCommand="update orderc set PolicyId=@PolicyId, PolicyName=@PolicyName, PolicyAmount=@PolicyAmount, Catagory=@Catagory where Id=@Id  " DeleteCommand=" delete from orderc   where Id=@Id"
></asp:SqlDataSource>
       
        

       
        <br />
       
        

       
    </center>
</asp:Content>