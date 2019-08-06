<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="CannotMeh.Appointmnet" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>
        Date:
        <asp:Calendar ID="Calendar1" SelectedDate="<%# DateTime.Today %>" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px"  Width="350px" >
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
        </asp:Calendar>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custID,BeatID,appdate" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                <asp:BoundField DataField="BeatID" HeaderText="BeatID" ReadOnly="True" SortExpression="BeatID" />
                <asp:BoundField DataField="appdate" HeaderText="appdate" ReadOnly="True" SortExpression="appdate" />
                <asp:BoundField DataField="code" HeaderText="code" SortExpression="code" />
                <asp:BoundField DataField="deposit" HeaderText="deposit" SortExpression="deposit" />
                <asp:CheckBoxField DataField="complete" HeaderText="complete" SortExpression="complete" />
            </Columns>
        </asp:GridView>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="custID,BeatID,appdate" OnItemUpdating="FormView1_ItemUpdating" OnItemCommand="FormView1_ItemCommand" OnModeChanging="EmployeeFormView_ModeChanging" OnPageIndexChanging="FormView1_PageIndexChanging" >
            <EditItemTemplate>
                custID:
                <asp:Label ID="custIDLabel1" runat="server" Text='<%# Eval("custID") %>' />
                <br />
                BeatID:
                <asp:Label ID="BeatIDLabel1" runat="server" Text='<%# Eval("BeatID") %>' />
                <br />
                appdate:
                <asp:Textbox ID="appdateTb1" runat="server" Text='<%# Eval("appdate") %>' />
                <br />
                code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' Enabled="False" />
                <br />
                deposit:
                <asp:TextBox ID="depositTextBox" runat="server" Text='<%# Bind("deposit") %>' Enabled="False" />
                <br />
                complete:
                <asp:CheckBox ID="completeCheckBox" runat="server" Checked='<%# Bind("complete") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                custID:
                <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                BeatID:
                <asp:TextBox ID="BeatIDTextBox" runat="server" Text='<%# Bind("BeatID") %>' />
                <br />
                appdate:
                <asp:TextBox ID="appdateTextBox" runat="server" Text='<%# Bind("appdate") %>' />
                <br />
                code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                <br />
                deposit:
                <asp:TextBox ID="depositTextBox" runat="server" Text='<%# Bind("deposit") %>' />
                <br />
                complete:
                <asp:CheckBox ID="completeCheckBox" runat="server" Checked='<%# Bind("complete") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                custID:
                <asp:Label ID="custIDLabel" runat="server" Text='<%# Eval("custID") %>' />
                <br />
                BeatID:
                <asp:Label ID="BeatIDLabel" runat="server" Text='<%# Eval("BeatID") %>' />
                <br />
                appdate:
                <asp:Label ID="appdateLabel" runat="server" Text='<%# Eval("appdate") %>' />
                <br />
                code:
                <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                <br />
                deposit:
                <asp:Label ID="depositLabel" runat="server" Text='<%# Bind("deposit") %>' />
                <br />
                complete:
                <asp:CheckBox ID="completeCheckBox" runat="server" Checked='<%# Bind("complete") %>' Enabled="false" />
                <br />
                <asp:Button ID="btn_edit" runat="server" OnClick="btn_edit_Click" Text="Edit" />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=CONVERT(datetime, @appdate, 101) and complete=0 ">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="appdate" PropertyName="SelectedDate" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>
