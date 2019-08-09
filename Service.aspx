<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="CannotMeh.Service" MasterPageFile="~/Site1.Master"%>
<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" EnableViewState="false" runat="server">
<!DOCTYPE html>

<html>
<head>
    <title></title>
</head>
<body>
  
        <div>

            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services]" DeleteCommand="DELETE FROM [Services] WHERE [code] = @code" InsertCommand="INSERT INTO [Services] ([code], [sName], [type], [price]) VALUES (@code, @sName, @type, @price)" UpdateCommand="UPDATE [Services] SET [sName] = @sName, [type] = @type, [price] = @price WHERE [code] = @code">
                <DeleteParameters>
                    <asp:Parameter Name="code" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="code" Type="String" />
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="code" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:Button ID="Button1" runat="server" OnClick="LinkButton1_Click" Text="New Customer" />

            <asp:FormView ID="FormView1" runat="server" DataKeyNames="code" DataSourceID="SqlDataSource2" OnItemUpdated="FormView1_ItemUpdated" Visible="False" OnModeChanging="FormView1_ModeChanged" OnItemCommand="FormView1_ItemCommand">
                <EditItemTemplate>
                    code:
                    <asp:Label ID="codeLabel1" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    sName:
                    <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' />
                    <br />
                    type:
                    <asp:DropDownList ID="typeTextBox" runat="server" SelectedValue='<%# Bind("type") %>' >
                        <asp:ListItem>Skin Treatment</asp:ListItem>
                        <asp:ListItem>FaceTreatement</asp:ListItem>
                        <asp:ListItem>Body Massage</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    code:
                    <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' Enabled="False" />
                    <br />
                    sName:
                    <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' />
                    <br />
                    type:
                    <asp:DropDownList ID="typeTextBox" runat="server" SelectedValue='<%# Bind("type") %>' >
                        <asp:ListItem>Skin Treatment</asp:ListItem>
                        <asp:ListItem>FaceTreatement</asp:ListItem>
                        <asp:ListItem>Body Massage</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    price:
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    code:
                    <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    sName:
                    <asp:Label ID="sNameLabel" runat="server" Text='<%# Bind("sName") %>' />
                    <br />
                    type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                    <br />
                    price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                    <br />

                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Services] WHERE [code] = @code" InsertCommand="INSERT INTO [Services] ([code], [sName], [type], [price]) VALUES (@code, @sName, @type, @price)" SelectCommand="SELECT * FROM [Services] WHERE ([code] = @code)" UpdateCommand="UPDATE [Services] SET [sName] = @sName, [type] = @type, [price] = @price WHERE [code] = @code">
                <DeleteParameters>
                    <asp:Parameter Name="code" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="code" Type="String" />
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DataList1" Name="code" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="sName" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="code" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </body>
</html>
 
<asp:DataList ID="DataList1" runat="server" DataKeyField="code" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="Item_Command" >
                <ItemTemplate>
                    Code:
                    <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    Service Name:
                    <asp:Label ID="sNameLabel" runat="server" Text='<%# Eval("sName") %>' />
                    <br />
                    Service type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    Price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                    <asp:LinkButton id="SelectButton" Text="Select" CommandName="Select" runat="server"/>
                    <br />
<br />
                </ItemTemplate>
    <SelectedItemTemplate>
                            Code:
                    <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    Service Name:
                    <asp:Label ID="sNameLabel" runat="server" Text='<%# Eval("sName") %>' />
                    <br />
                    Service type:
                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    Price:
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />
                            <br />
                    <asp:LinkButton id="EditButton" Text="Edit" CommandName="Edit" runat="server"/>
                    
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:LinkButton id="CancelButton1" Text="Cancel" CommandName="Cancel" runat="server"/>
                            <br />
                    <br />
         </SelectedItemTemplate>
         <EditItemTemplate>
                                         Code:
                    <asp:TextBox ID="codetb" runat="server" Text='<%# Eval("code") %>' />
                    <br />
                    Service Name:
                    <asp:TextBox ID="sNametb" runat="server" Text='<%# Eval("sName") %>' />
                    <br />
                    Service type:
                    <asp:TextBox ID="typetb" runat="server" Text='<%# Eval("type") %>' />
                    <br />
                    Price:
                    <asp:TextBox ID="pricetb" runat="server" Text='<%# Eval("price") %>' />
                    <br />


         </EditItemTemplate>
            </asp:DataList>

   </asp:Content>