<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beautician.aspx.cs" Inherits="CannotMeh.Beautician" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>
        <table style="width: 100%; vertical-align: middle; text-align: center">
            <tr>
                <td>
                    <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New Beautician" CssClass="w3-button w3-teal w3-round-xxlarge" Font-Bold="true" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="Cmds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Beautician]"></asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="beatID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
                <EditItemTemplate>
                    <table style="border: solid; width: 500px; text-align: left">
                        <tr>
                            <td style="padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">Beautician ID : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="beatIDLabel1" runat="server" Text='<%# Eval("beatID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">First Name : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">Last Name : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">HP No : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:TextBox ID="hpnoTextBox" runat="server" Text='<%# Bind("hpno") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td style="padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">IC No : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:TextBox ID="icnoTextBox" runat="server" Text='<%# Bind("icno") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center; padding: 5px">
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="w3-button w3-teal w3-round-xxlarge" />
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table style="border: solid; width: 500px">
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Beautician ID : </asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="beatIDTextBox" runat="server" Text='<%# Bind("beatID") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">First Name : </asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">Last Name : </asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">HP No : </asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="hpnoTextBox" runat="server" Text='<%# Bind("hpno") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" Font-Bold="true">IC No : </asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="icnoTextBox" runat="server" Text='<%# Bind("icno") %>' CssClass="w3-input w3-border" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="w3-button w3-teal w3-round-xxlarge" />
                            </td>
                        </tr>
                    </table>

                </InsertItemTemplate>
                <ItemTemplate>
                    <table style="border: solid; width: 400px">
                        <tr>
                            <td style="text-align: left; padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">Beautician ID : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="beatIDLabel" runat="server" Text='<%# Eval("beatID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">First Name : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">Last Name : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="lnameLabel" runat="server" Text='<%# Bind("lname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">HP No : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="hpnoLabel" runat="server" Text='<%# Bind("hpno") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: left; padding: 5px">
                                <asp:Label runat="server" Font-Bold="true">IC No : </asp:Label>
                            </td>
                            <td style="padding: 5px">
                                <asp:Label ID="icnoLabel" runat="server" Text='<%# Bind("icno") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="btnEdit" runat="server" OnClick="Edit_Click" Text="Edit" Width="80px" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                &nbsp;
                                <asp:Button ID="Button2" runat="server" OnClick="delete_click" Text="Delete" Width="80px" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                &nbsp;
                                <asp:Button ID="Button3" runat="server" OnClick="cancel_select_click" Text="Cancel" Width="80px" CssClass="w3-button w3-teal w3-round-xxlarge" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="beatID" DataSourceID="Cmds" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="beatID" HeaderText="BeauticianID" ReadOnly="True" SortExpression="beatID" />
                                <asp:BoundField DataField="fname" HeaderText="FirstName" SortExpression="fname" />
                                <asp:BoundField DataField="lname" HeaderText="LastName" SortExpression="lname" />
                                <asp:BoundField DataField="hpno" HeaderText="PhoneNo" SortExpression="hpno" />
                                <asp:BoundField DataField="icno" HeaderText="IC_No" SortExpression="icno" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Beautician] WHERE ([beatID] = @beatID)" DeleteCommand="DELETE FROM [Beautician] WHERE [beatID] = @beatID" InsertCommand="INSERT INTO [Beautician] ([beatID], [fname], [lname], [hpno], [icno]) VALUES (@beatID, @fname, @lname, @hpno, @icno)" OnUpdated="refresh_databind" UpdateCommand="UPDATE [Beautician] SET [fname] = @fname, [lname] = @lname, [hpno] = @hpno, [icno] = @icno WHERE [beatID] = @beatID" OnInserted="refresh_databind" OnDeleted="refresh_databind">
                            <DeleteParameters>
                                <asp:Parameter Name="beatID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="beatID" Type="String" />
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="lname" Type="String" />
                                <asp:Parameter Name="hpno" Type="String" />
                                <asp:Parameter Name="icno" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="beatID" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fname" Type="String" />
                                <asp:Parameter Name="lname" Type="String" />
                                <asp:Parameter Name="hpno" Type="String" />
                                <asp:Parameter Name="icno" Type="String" />
                                <asp:Parameter Name="beatID" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
