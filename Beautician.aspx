<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Beautician.aspx.cs" Inherits="CannotMeh.Beautician" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnNew" runat="server" OnClick="btnNew_Click" Text="New Beautician" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="beatID" DataSourceID="Cmds" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="beatID" HeaderText="beatID" ReadOnly="True" SortExpression="beatID" />
                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                    <asp:BoundField DataField="hpno" HeaderText="hpno" SortExpression="hpno" />
                    <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
                </Columns>
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
            <asp:SqlDataSource ID="Cmds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Beautician]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="beatID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    beatID:
                    <asp:Label ID="beatIDLabel1" runat="server" Text='<%# Eval("beatID") %>' />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    beatID:
                    <asp:TextBox ID="beatIDTextBox" runat="server" Text='<%# Bind("beatID") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    beatID:
                    <asp:Label ID="beatIDLabel" runat="server" Text='<%# Eval("beatID") %>' />
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
                    <asp:Button ID="btnEdit" runat="server" OnClick="Edit_Click" Text="Edit" />
                    <asp:Button ID="Button2" runat="server" OnClick="delete_click" Text="Delete" />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
