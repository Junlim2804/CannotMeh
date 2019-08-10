<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="CannotMeh.Customer" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div>
        <table style="width: 100%; vertical-align: middle; text-align: center">
            <tr>
                <td>
                    <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New Customer" CssClass="w3-button w3-teal w3-round-xxlarge" Font-Bold="true" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                        <asp:SqlDataSource ID="Cmds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="custID" DataSourceID="SqlDataSource1" OnItemInserted="FormView1_ItemInserted" HorizontalAlign="Center">
                            <EditItemTemplate>
                                CustomerID:
                    <asp:Label ID="custIDLabel1" runat="server" Enabled="false" Text='<%# Eval("custID") %>' />
                                <br />
                                First Name:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                                <br />
                                Last Name:
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                                <br />

                                IcNo:
                    <asp:TextBox ID="icnoTextBox" runat="server" Text='<%# Bind("icno") %>' />
                                <br />
                                No of Member Bring:
                    <asp:TextBox ID="memberBringTextBox" runat="server" Text='<%# Bind("memberBring") %>' />
                                <br />
                                Member:
                    <asp:CheckBox ID="isMemberCheckBox" runat="server" Checked='<%# Bind("isMember") %>' />
                                <br />
                                Applicable for discount?:
                    <asp:CheckBox ID="discountCheckBox" runat="server" Checked='<%# Bind("discount") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <table style="border: solid; width: 500px">
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">Customer Hp No : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' CssClass="w3-input w3-border" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">First Name : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' CssClass="w3-input w3-border" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">Last Name : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' CssClass="w3-input w3-border" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">IC Number : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:TextBox ID="icnoTextBox" runat="server" Text='<%# Bind("icno") %>' CssClass="w3-input w3-border" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">Discount : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:CheckBox ID="discountCheckBox" runat="server" Checked='<%# Bind("discount") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" Font-Bold="true">Member : </asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:CheckBox ID="isMemberCheckBox" runat="server" AutoPostBack="True" OnCheckedChanged="isMemberCheckBox_CheckedChanged" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbref" runat="server" Text="Refererrel ?" Visible="False" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td colspan="2">
                                            <asp:CheckBox ID="cb_ref" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" Visible="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbrefhpno" runat="server" Text="Refererrel hpNo:" Visible="False" Font-Bold="true"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="tbhpno" runat="server" Visible="False" CssClass="w3-input w3-border" />
                                        </td>
                                        <td>
                                            <asp:Button ID="btnSearch" runat="server" OnClick="Button1_Click" Text="Verify" Visible="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label ID="lbcustname" runat="server" Text="Not Found" Visible="False"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="3" style="text-align: center">
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                            &nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="w3-button w3-teal w3-round-xxlarge" />
                                        </td>
                                    </tr>
                                </table>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <table style="border: solid; width: 400px; text-align: left">
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">Customer ID : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:Label ID="custIDLabel" runat="server" Text='<%# Eval("custID") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">First Name : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">Last Name : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:Label ID="lnameLabel" runat="server" Text='<%# Bind("lname") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">IC No : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:Label ID="icnoLabel" runat="server" Text='<%# Bind("icno") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">No. of Referral : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:Label ID="memberBringLabel" runat="server" Text='<%# Bind("memberBring") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">Member? : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <!-- This one got error sia -->
                                            <asp:CheckBox ID="isMemberCheckBox" runat="server" Checked='<%# Bind("isMember") %>' Enabled="false" /> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding: 5px">
                                            <asp:Label runat="server" Font-Bold="true">Discount? : </asp:Label>
                                        </td>
                                        <td style="padding: 5px">
                                            <asp:CheckBox ID="discountCheckBox" runat="server" Checked='<%# Bind("discount") %>' Enabled="false" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align: center; padding: 5px">
                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="Edit_Click" />&nbsp;
                                <asp:Button ID="btn_delete" runat="server" Text="Remove" OnClick="delete_click" />&nbsp;
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="cancel_select_click" />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custID" DataSourceID="Cmds" CellPadding="4" GridLines="Horizontal" HorizontalAlign="Center" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="custID" HeaderText="CustomerID" ReadOnly="True" SortExpression="custID" />
                            <asp:BoundField DataField="fname" HeaderText="FirstName" SortExpression="fname" />
                            <asp:BoundField DataField="lname" HeaderText="LastName" SortExpression="lname" />

                            <asp:BoundField DataField="icno" HeaderText="IC_No" SortExpression="icno" />
                            <asp:BoundField DataField="memberBring" HeaderText="No_Referral" SortExpression="memberBring" />
                            <asp:CheckBoxField DataField="isMember" HeaderText="Is_Member?" SortExpression="isMember" />
                            <asp:CheckBoxField DataField="discount" HeaderText="Discount" SortExpression="discount" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([custID] = @custID)" DeleteCommand="DELETE FROM [Customer] WHERE [custID] = @custID" InsertCommand="INSERT INTO [Customer] ([custID], [fname], [lname],  [icno], [memberBring], [isMember], [discount]) VALUES (@custID, @fname, @lname,  @icno,0, @isMember, @discount)" OnUpdated="refresh_databind" UpdateCommand="UPDATE [Customer] SET [fname] = @fname, [lname] = @lname,  [icno] = @icno, [memberBring] = @memberBring, [isMember] = @isMember, [discount] = @discount WHERE [custID] = @custID" OnInserted="refresh_databind" OnDeleted="refresh_databind" OnSelecting="SqlDataSource1_Selecting">
                        <DeleteParameters>
                            <asp:Parameter Name="custID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="custID" Type="String" />
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />

                            <asp:Parameter Name="icno" Type="String" />

                            <asp:Parameter Name="isMember" Type="Boolean" />
                            <asp:Parameter Name="discount" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="custID" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fname" Type="String" />
                            <asp:Parameter Name="lname" Type="String" />



                            <asp:Parameter Name="icno" Type="String" />
                            <asp:Parameter Name="memberBring" Type="Int32" />
                            <asp:Parameter Name="isMember" Type="Boolean" />
                            <asp:Parameter Name="discount" Type="Boolean" />
                            <asp:Parameter Name="custID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
