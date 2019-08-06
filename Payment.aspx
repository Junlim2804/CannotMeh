<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CannotMeh.Payment" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>

        <div style="width: 60% ;margin: 0 auto;">
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/WalkIn.aspx" Text="Walk In Customer" />
            <br />
            <br />
            <asp:GridView ID="GridView1" Width="800px" runat="server" AutoGenerateColumns="False" DataKeyNames="custID,BeatID,appdate" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="btnOpenPopupWindow_Click">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="custID" HeaderText="CustID" ReadOnly="True" SortExpression="custID" />
                    <asp:BoundField DataField="BeatID" HeaderText="BeautID" ReadOnly="True" SortExpression="BeatID" />
                    <asp:BoundField DataField="appdate" HeaderText="AppDate" ReadOnly="True" SortExpression="appdate" />
                    <asp:BoundField DataField="code" HeaderText="ServCode" SortExpression="code" />
                    <asp:BoundField DataField="deposit" HeaderText="Deposit" SortExpression="deposit" />
                    <asp:CheckBoxField DataField="complete" HeaderText="Complete?" SortExpression="complete" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=cast(getdate() as date) and complete=0">
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
