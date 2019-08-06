<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WalkIn.aspx.cs" Inherits="CannotMeh.WalkIn"  MasterPageFile="~/Site1.Master"  %>
<asp:Content ID="content1" ContentPlaceHolderID="ctPlaceholder1" runat="server">
    <div style="width: 60% ;margin: 0 auto;">
    <div style="height: 100%; width:100%; text-align:center; vertical-align:middle;align-content:center">
        <div class="w3-container">
            <div class="w3-row">
                <div class="w3-col m7">
                    <asp:Table runat="server" Width="600px" BorderColor="Black" BorderStyle="Dotted">
                        <asp:TableRow>
                            <asp:TableCell>
                    Customer ID:
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:DropDownList ID="ddlcustomer" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="icno" DataValueField="custID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem>Please Select Customer IC</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="lblCustID" runat="server" Enabled="true" Text='<%# Bind("custID") %>' />
                            </asp:TableCell><asp:TableCell>
                                <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" Visible="False" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                    Beautician ID:
                            </asp:TableCell><asp:TableCell>
                                <asp:DropDownList ID="ddlBeautician" AppendDataBoundItems="True" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="fname" DataValueField="beatID" OnSelectedIndexChanged="DdlBeautician_SelectedIndexChanged">
                                    <asp:ListItem>Please Select Beautician ID</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="lblBeatID" runat="server" Text='<%# Bind("BeatID") %>' />
                            </asp:TableCell><asp:TableCell>
                                <asp:Button ID="btnChange1" runat="server" Text="Change" OnClick="btnChange1_Click" Visible="False" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                    Service Date Time:
                            </asp:TableCell><asp:TableCell>
                                <asp:Label ID="lblappdate" runat="server" Text='<%# Bind("appdate") %>' />
                            </asp:TableCell>
                        </asp:TableRow>       
                        <asp:TableRow>
                            <asp:TableCell>
                    Service Code:
                            </asp:TableCell><asp:TableCell>
                                <asp:DropDownList ID="ddlService" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Ds_code" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="ddlService_SelectedIndexChanged">
                                    <asp:ListItem>Select Services</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="Ds_code" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services]"></asp:SqlDataSource>
                                <asp:Label ID="lblCode" runat="server" Text='<%# Bind("code") %>' Visible="False" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                    Total Amount:
                            </asp:TableCell><asp:TableCell>
                                <asp:TextBox ID="txtTotalPayment" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>

                        <asp:TableRow>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="3" CssClass="w3-center">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" />
                                &nbsp;&nbsp;
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
                <div class="w3-col m7">
                    <div class="w3-col m7">
                        <asp:Table runat="server" CssClass="w3-center" Width="600px">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="600px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="custID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                                        <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                                        <Fields>
                                            <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                                            <asp:BoundField DataField="hpno" HeaderText="hpno" SortExpression="hpno" />
                                            <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
                                            <asp:BoundField DataField="memberBring" HeaderText="memberBring" SortExpression="memberBring" />
                                            <asp:CheckBoxField DataField="isMember" HeaderText="isMember" SortExpression="isMember" />
                                            <asp:CheckBoxField DataField="discount" HeaderText="discount" SortExpression="discount" />
                                        </Fields>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    </asp:DetailsView>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="beatID" DataSourceID="DS_beautician_dataview" ForeColor="#333333" GridLines="None" Height="50px" Width="600px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                        <Fields>
                                            <asp:BoundField DataField="beatID" HeaderText="beatID" ReadOnly="True" SortExpression="beatID" />
                                            <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                            <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                                            <asp:BoundField DataField="hpno" HeaderText="hpno" SortExpression="hpno" />
                                            <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
                                        </Fields>
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                    </asp:DetailsView>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </div>
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
