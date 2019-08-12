<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CannotMeh.Payment" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>
        <div>
            <asp:GridView ID="GridView1" Width="1000px" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="btnOpenPopupWindow_Click" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Center" DataKeyNames="custID,BeatID,appdate">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="custID" HeaderText="Cust ID" SortExpression="custID" ReadOnly="True" />
                    <asp:BoundField DataField="lname" HeaderText="Cus Name" SortExpression="lname" />
                    <asp:BoundField DataField="BeatID" HeaderText="Beau ID" SortExpression="BeatID" ReadOnly="True" />
                    <asp:BoundField DataField="Expr1" HeaderText="Beau Name" SortExpression="Expr1" />
                    <asp:BoundField DataField="appdate" HeaderText="Applcation Date" SortExpression="appdate" ReadOnly="True" />
                    <asp:BoundField DataField="sName" HeaderText="Service Name" SortExpression="sName" />
                    <asp:BoundField DataField="deposit" HeaderText="Deposited" SortExpression="deposit" />
                    <asp:CheckBoxField DataField="complete" HeaderText="Complete?" SortExpression="complete" />
                </Columns>
                <EmptyDataTemplate>
                    <div style="text-align:center">
                        <asp:Label runat="server" Font-Bold="true">There is currently no available appointment for payment</asp:Label>
                    </div>
                    
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=cast(getdate() as date) and complete=0">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Appointment.custID, Customer.lname, Appointment.BeatID, Beautician.lname AS Expr1, Appointment.appdate, Services.sName, Appointment.deposit, Appointment.complete FROM Appointment INNER JOIN Beautician ON Appointment.BeatID = Beautician.beatID INNER JOIN Customer ON Appointment.custID = Customer.custID INNER JOIN Services ON Appointment.code = Services.code WHERE (CAST(Appointment.appdate AS date) = CAST(GETDATE() AS date)) AND (Appointment.complete = 0)"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
