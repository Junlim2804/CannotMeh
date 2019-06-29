<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="CannotMeh.Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New Customer" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="custID" DataSourceID="Cmds" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="hpno" HeaderText="hpno" SortExpression="hpno" />
                    <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
                    <asp:BoundField DataField="memberBring" HeaderText="memberBring" SortExpression="memberBring" />
                    <asp:CheckBoxField DataField="isMember" HeaderText="isMember" SortExpression="isMember" />
                    <asp:CheckBoxField DataField="discount" HeaderText="discount" SortExpression="discount" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer] WHERE ([custID] = @custID)" DeleteCommand="DELETE FROM [Customer] WHERE [custID] = @custID" InsertCommand="INSERT INTO [Customer] ([custID], [fname], [lname], [hpno], [icno], [memberBring], [isMember], [discount]) VALUES (@custID, @fname, @lname, @hpno, @icno, @memberBring, @isMember, @discount)" OnUpdated="SqlDataSource1_Updated" UpdateCommand="UPDATE [Customer] SET [fname] = @fname, [lname] = @lname, [hpno] = @hpno, [icno] = @icno, [memberBring] = @memberBring, [isMember] = @isMember, [discount] = @discount WHERE [custID] = @custID" OnInserted="SqlDataSource1_Inserted">
                <DeleteParameters>
                    <asp:Parameter Name="custID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custID" Type="String" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="hpno" Type="String" />
                    <asp:Parameter Name="icno" Type="String" />
                    <asp:Parameter Name="memberBring" Type="Int32" />
                    <asp:Parameter Name="isMember" Type="Boolean" />
                    <asp:Parameter Name="discount" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="custID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="hpno" Type="String" />
                    <asp:Parameter Name="icno" Type="String" />
                    <asp:Parameter Name="memberBring" Type="Int32" />
                    <asp:Parameter Name="isMember" Type="Boolean" />
                    <asp:Parameter Name="discount" Type="Boolean" />
                    <asp:Parameter Name="custID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Cmds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="custID" DataSourceID="SqlDataSource1">
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
                    HpNo:
                    <asp:TextBox ID="hpnoTextBox" runat="server" Text='<%# Bind("hpno") %>' />
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
                    custID:
                    <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                    <br />
                    fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    lname:
                    <asp:TextBox ID="lnameTextBox" runat="server" Text='<%# Bind("lname") %>' />
                    <br />
                    hpno:
                    <asp:TextBox ID="hpnoTextBox" runat="server" Text='<%# Bind("hpno") %>' />
                    <br />
                    icno:
                    <asp:TextBox ID="icnoTextBox" runat="server" Text='<%# Bind("icno") %>' />
                    <br />
                    memberBring:
                    <asp:TextBox ID="memberBringTextBox" runat="server" Text='<%# Bind("memberBring") %>' />
                    <br />
                    isMember:
                    <asp:CheckBox ID="isMemberCheckBox" runat="server" Checked='<%# Bind("isMember") %>' />
                    <br />
                    discount:
                    <asp:CheckBox ID="discountCheckBox" runat="server" Checked='<%# Bind("discount") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    custID:
                    <asp:Label ID="custIDLabel" runat="server" Text='<%# Eval("custID") %>' />
                    <br />
                    fname:
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    lname:
                    <asp:Label ID="lnameLabel" runat="server" Text='<%# Bind("lname") %>' />
                    <br />
                    hpno:
                    <asp:Label ID="hpnoLabel" runat="server" Text='<%# Bind("hpno") %>' />
                    <br />
                    icno:
                    <asp:Label ID="icnoLabel" runat="server" Text='<%# Bind("icno") %>' />
                    <br />
                    memberBring:
                    <asp:Label ID="memberBringLabel" runat="server" Text='<%# Bind("memberBring") %>' />
                    <br />
                    isMember:
                    <asp:CheckBox ID="isMemberCheckBox" runat="server" Checked='<%# Bind("isMember") %>' Enabled="false" />
                    <br />
                    discount:
                    <asp:CheckBox ID="discountCheckBox" runat="server" Checked='<%# Bind("discount") %>' Enabled="false" />
                    <br />

                    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="Edit_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
