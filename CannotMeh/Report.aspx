﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" EnableEventValidation = "false" Inherits="CannotMeh.Report" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div class="w3-row">
        <div class="w3-col m4">
            <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </div>
        <div class="w3-col m2">
            <asp:GridView ID="GridView1" runat="server" ShowFooter="true" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="payDate" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" OnRowDataBound="GridView1_RowDataBound" HorizontalAlign="Center" Width="650px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="custID" HeaderText="Customer ID" SortExpression="custID" />
                <asp:BoundField DataField="beatID" HeaderText="Beautician ID" SortExpression="beatID" />
                <asp:BoundField DataField="code" HeaderText="Service Code" SortExpression="code" />
                <asp:BoundField DataField="payDate" HeaderText="Payment Date" ReadOnly="True" SortExpression="payDate" />
                <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
            </Columns>
                <EmptyDataTemplate>
                    There is currently no report for this day
                </EmptyDataTemplate>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Export to Excel" />
        </p>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Payment] where cast(paydate as date)=cast(getdate() as date)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Payment] where cast(paydate as date)=cast(@payDate as date)" OnSelecting="SqlDataSource2_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="payDate" PropertyName="SelectedDate" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        
</asp:Content>