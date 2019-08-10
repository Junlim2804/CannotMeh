<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service.aspx.cs" Inherits="CannotMeh.Service" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="content" ContentPlaceHolderID="ctPlaceholder1" EnableViewState="false" runat="server">

    <div>
        <table style="width: 100%; text-align: center">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="LinkButton1_Click" Text="New Service" CssClass="w3-button w3-teal w3-round-xxlarge" />
                </td>
            </tr>
            <tr>
                <td>&nbsp
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="code" DataSourceID="SqlDataSource2" OnItemUpdated="FormView1_ItemUpdated" Visible="False" OnModeChanging="FormView1_ModeChanged" OnItemCommand="FormView1_ItemCommand" HorizontalAlign="Center" OnItemInserted="FormView1_ItemInserted" OnItemDeleted="FormView1_ItemDeleted">
                        <EditItemTemplate>
                            <table style="border: solid; width: 400px">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Code : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="codeLabel1" runat="server" Text='<%# Eval("code") %>' CssClass="w3-input w3-border" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' CssClass="w3-input w3-border"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="typeTextBox" runat="server" SelectedValue='<%# Bind("type") %>' CssClass="w3-input w3-border">
                                            <asp:ListItem>Skin Treatment</asp:ListItem>
                                            <asp:ListItem>FaceTreatement</asp:ListItem>
                                            <asp:ListItem>Body Massage</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Price : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' CssClass="w3-input w3-border"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table style="border: solid; width: 400px">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Code : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' Enabled="False" CssClass="w3-input w3-border"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="sNameTextBox" runat="server" Text='<%# Bind("sName") %>' CssClass="w3-input w3-border"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="typeTextBox" runat="server" SelectedValue='<%# Bind("type") %>' CssClass="w3-input w3-border" OnSelectedIndexChanged="typeTextBox_SelectedIndexChanged">
                                            <asp:ListItem>Skin Treatment</asp:ListItem>
                                            <asp:ListItem>FaceTreatement</asp:ListItem>
                                            <asp:ListItem>Body Massage</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Price : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' CssClass="w3-input w3-border"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table style="border: solid; width: 400px">
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Code : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="sNameLabel" runat="server" Text='<%# Bind("sName") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="typeLabel" runat="server" Text='<%# Bind("type") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Price : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                        &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
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
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="code" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="Item_Command" HorizontalAlign="Center" OnSelectedIndexChanged="typeTextBox_SelectedIndexChanged">
                        <ItemTemplate>
                            <table style="border: solid; width: 400px; text-align: left">
                                <tr>
                                    <td style="width: 150px">
                                        <asp:Label runat="server" Font-Bold="true">Code : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="sNameLabel" runat="server" Text='<%# Eval("sName") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Price : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align:center">
                                        <asp:LinkButton ID="SelectButton" Text="Select" CommandName="Select" runat="server" Font-Bold="true" CssClass="w3-button" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemTemplate>
                            <table style="border: solid; width: 400px; text-align: left">
                                <tr>
                                    <td style="width: 150px">
                                        <asp:Label runat="server" Font-Bold="true">Code : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="codeLabel" runat="server" Text='<%# Eval("code") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="sNameLabel" runat="server" Text='<%# Eval("sName") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Service Type : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true">Price : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align: center">
                                        <asp:LinkButton ID="EditButton" Text="Edit" CommandName="Edit" runat="server" CssClass="w3-button" />
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="CancelButton1" Text="Cancel" CommandName="Cancel" runat="server" CssClass="w3-button"/>
                                    </td>
                                </tr>
                            </table>
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
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
