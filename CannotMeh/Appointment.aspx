    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="CannotMeh.Appointmnet" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">

    <div class="w3-row">
        <div class="w3-col m5">
            <table style="width: 100%;">
                <tr>
                    <td style="padding: 8px">
                        <label>CustomerID:
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        BeauticianID:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
                        </label>
                        &nbsp;
                    </td>
              
                </tr>
                <tr>
                    <td style="vertical-align: middle; text-align: center; padding: 8px">
                        <div style="width: 350px">
                        <label>Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                            <asp:Calendar ID="Calendar1" SelectedDate="<%# DateTime.Today %>" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" Width="350px">
                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                <TodayDayStyle BackColor="#CCCCCC" />
                            </asp:Calendar>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="custID,BeatID,appdate" OnItemUpdating="FormView1_ItemUpdating" OnItemCommand="FormView1_ItemCommand" OnModeChanging="EmployeeFormView_ModeChanging" OnPageIndexChanging="FormView1_PageIndexChanging">
                <EditItemTemplate>
                    custID:
                <asp:Label ID="custIDLabel1" runat="server" Text='<%# Eval("custID") %>' />
                    <br />
                    BeatID:
                <asp:Label ID="BeatIDLabel1" runat="server" Text='<%# Eval("BeatID") %>' />
                    <br />
                    appdate:
                <asp:TextBox ID="appdateTb1" runat="server" Text='<%# Eval("appdate") %>' />
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
                    <table>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Customer ID : </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="custIDLabel" runat="server" Text='<%# Eval("custID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Beautician ID : </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="BeatIDLabel" runat="server" Text='<%# Eval("BeatID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Application Date : </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="appdateLabel" runat="server" Text='<%# Eval("appdate") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Service Code : </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Deposited : </asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="depositLabel" runat="server" Text='<%# Bind("deposit") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Completed : </asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="completeCheckBox" runat="server" Checked='<%# Bind("complete") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center">
                                <asp:Button ID="btn_edit" runat="server" OnClick="btn_edit_Click" Text="Edit" />
                                &nbsp;
                                <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_click" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
                    </td>
                </tr>
            </table>
        </div>

        <div class="w3-col m4">
            <asp:GridView ID="GridView1" runat="server" Width="650px" AutoGenerateColumns="False" DataKeyNames="custID,BeatID,appdate" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Center" AllowSorting="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="custID" HeaderText="CustomerID" ReadOnly="True" SortExpression="custID" />
                    <asp:BoundField DataField="BeatID" HeaderText="BeauticianID" ReadOnly="True" SortExpression="BeatID" />
                    <asp:BoundField DataField="appdate" HeaderText="Application Date" ReadOnly="True" SortExpression="appdate" />
                    <asp:BoundField DataField="code" HeaderText="Service Code" SortExpression="code" />
                    <asp:BoundField DataField="deposit" HeaderText="Deposited" SortExpression="deposit" />
                    <asp:CheckBoxField DataField="complete" HeaderText="Complete" SortExpression="complete" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Appointment] WHERE ([custID] = @custID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="custID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Appointment] WHERE ([BeatID] = @BeatID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="BeatID" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select * from appointment where cast(appdate as date)=CONVERT(datetime, @appdate, 101) and complete=0 ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Calendar1" Name="appdate" PropertyName="SelectedDate" Type="DateTime" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </div>

</asp:Content>
