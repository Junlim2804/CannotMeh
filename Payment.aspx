<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CannotMeh.Payment" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>
        <div style="width: 25% ;margin: 0 auto;">
            Select Date:
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            </div>
        <div style="width: 60% ;margin: 0 auto;">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=CONVERT(datetime, @appdate, 101) and complete=0 ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="appdate" PropertyName="SelectedDate" Type="DateTime" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
