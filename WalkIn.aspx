<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WalkIn.aspx.cs" Inherits="CannotMeh.WalkIn" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content1" ContentPlaceHolderID="ctPlaceholder1" runat="server">

    <div class="w3-row">
        <div class="w3-col m5">
            <table style="border: solid; width: 600px; vertical-align:middle; text-align:center">
                <tr>
                    <td style="padding: 8px">
                        <asp:Label runat="server" Font-Bold="true">Customer ID: </asp:Label>
                    </td>
                    <td style="padding: 8px">
                        <asp:DropDownList ID="ddlcustomer" CssClass="w3-input w3-border" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="icno" DataValueField="custID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Please Select Customer IC</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblCustID" runat="server" Enabled="true" Text='<%# Bind("custID") %>' />
                        &nbsp
                    <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xxlarge" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 8px">
                        <asp:Label runat="server" Font-Bold="true">Beautician ID: </asp:Label>
                    </td>
                    <td style="padding: 8px">
                        <asp:DropDownList ID="ddlBeautician" CssClass="w3-input w3-border" AppendDataBoundItems="True" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="fname" DataValueField="beatID" OnSelectedIndexChanged="DdlBeautician_SelectedIndexChanged">
                            <asp:ListItem>Please Select Beautician ID</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblBeatID" runat="server" Text='<%# Bind("BeatID") %>' />
                        &nbsp
                    <asp:Button ID="btnChange1" runat="server" Text="Change" OnClick="btnChange1_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xxlarge" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 8px">
                        <asp:Label runat="server" Font-Bold="true">Service Date Time: </asp:Label>
                    </td>
                    <td style="padding: 8px">
                        <asp:Label ID="lblappdate" runat="server" Text='<%# Bind("appdate") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 8px">
                        <asp:Label runat="server" Font-Bold="true">Service Name: </asp:Label>
                    </td>
                    <td style="padding: 8px">
                        <asp:DropDownList ID="ddlService" CssClass="w3-input w3-border" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Ds_code" DataTextField="sName" DataValueField="code" OnSelectedIndexChanged="ddlService_SelectedIndexChanged">
                            <asp:ListItem>Select Services</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Ds_code" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [code], [sName], [type], [price] FROM [Services]"></asp:SqlDataSource>
                        <asp:Label ID="lblCode" runat="server" Text='<%# Bind("code") %>' Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 8px">
                        <asp:Label runat="server" Font-Bold="true">Total Amount: </asp:Label>
                    </td>
                    <td style="padding: 8px">
                        <asp:TextBox ID="txtTotalPayment" CssClass="w3-input w3-border" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 8px">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" />
                        &nbsp;&nbsp;
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>

        </div>
        <div class="w3-col m5">
            <table style="width: 600px">
                <tr>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="600px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="custID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" FieldHeaderStyle-Width="150px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                            <HeaderTemplate>Customer Details</HeaderTemplate>
                            <Fields>
                                <asp:BoundField DataField="custID" HeaderText="Customer ID" ReadOnly="True" SortExpression="custID" />
                                <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname" />
                                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                                <asp:BoundField DataField="hpno" HeaderText="Phone No" SortExpression="hpno" />
                                <asp:BoundField DataField="icno" HeaderText="IC No" SortExpression="icno" />
                                <asp:BoundField DataField="memberBring" HeaderText="No. of Referral" SortExpression="memberBring" />
                                <asp:CheckBoxField DataField="isMember" HeaderText="Member?" SortExpression="isMember" />
                                <asp:CheckBoxField DataField="discount" HeaderText="Discount" SortExpression="discount" />
                            </Fields>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="beatID" DataSourceID="DS_beautician_dataview" ForeColor="#333333" GridLines="None" Height="50px" Width="600px" HorizontalAlign="Center" FieldHeaderStyle-Width="150px">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                            <HeaderTemplate>Beautician Details</HeaderTemplate>
                            <Fields>
                                <asp:BoundField DataField="beatID" HeaderText="Beautician ID" ReadOnly="True" SortExpression="beatID" />
                                <asp:BoundField DataField="fname" HeaderText="First name" SortExpression="fname" />
                                <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname" />
                                <asp:BoundField DataField="hpno" HeaderText="Phone No" SortExpression="hpno" />
                                <asp:BoundField DataField="icno" HeaderText="IC No" SortExpression="icno" />
                            </Fields>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                        </asp:DetailsView>
                    </td>
                </tr>
            </table>
        </div>
    </div>



    <div style="width: 60%; margin: 0 auto;">
        <div style="height: 100%; width: 100%; text-align: center; vertical-align: middle; align-content: center">
            <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="DS_beautician_dataview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Beautician] WHERE ([beatID] = @beatID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlBeautician" Name="beatID" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Beautician]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([custID] = @custID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblCustID" Name="custID" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
