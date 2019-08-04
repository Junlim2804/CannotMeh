<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="CannotMeh.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Date:<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custID,BeatID,appdate" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="btnOpenPopupWindow_Click">
                <Columns>
                    <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                    <asp:BoundField DataField="BeatID" HeaderText="BeatID" ReadOnly="True" SortExpression="BeatID" />
                    <asp:BoundField DataField="appdate" HeaderText="appdate" ReadOnly="True" SortExpression="appdate" />
                    <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                    <asp:BoundField DataField="deposit" HeaderText="deposit" SortExpression="deposit" />
                    <asp:CheckBoxField DataField="complete" HeaderText="complete" SortExpression="complete" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=CONVERT(datetime, @appdate, 101) and complete=0 ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="appdate" PropertyName="SelectedDate" Type="DateTime" DefaultValue="" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
