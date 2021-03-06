﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AzureSQL._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>ASP.NET Web Application with Azure SQL Database</h1>
        <p class="lead">Here is the content of the dbo.demoTable table of the testDB database</p>
        <p><asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlAzureDataSource">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="dataval" HeaderText="dataval" SortExpression="dataval" />
            </Columns>
            </asp:GridView>
        </p>
    </div>

    <div class="row">
    </div>

<asp:SqlDataSource ID="SqlAzureDataSource" runat="server" 
   ConnectionString="<%$ ConnectionStrings:SQLAzureConnection %>" 
   SelectCommand="SELECT * FROM [demoTable]">
</asp:SqlDataSource>

</asp:Content>

