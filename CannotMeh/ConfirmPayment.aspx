<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPayment.aspx.cs" Inherits="CannotMeh.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 22px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <asp:FormView ID="FormView1" runat="server" CssClass="auto-style1" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Font-Size="Large" OnPageIndexChanging="FormView1_PageIndexChanging">
            <ItemTemplate>
                <table style="width: 600px; border: solid">
                    <tr>
                        <td colspan="2" style="font-size: 40px; text-align:center; font-weight:bold">
                            Confirm Payment
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Customer : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="CustomerLabel" runat="server" Text='<%# Bind("Customer") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Beautician : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="BeauticianLabel" runat="server" Text='<%# Bind("Beautician") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Appointment Time : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="Appointment_TimeLabel" runat="server" Text='<%# Bind("[Appointment Time]") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Current Time : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="Current_TimeLabel" runat="server" Text='<%# Bind("[Current Time]") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Service Name : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="sNameLabel" runat="server" Text='<%# Bind("[Service Name]") %>' />
                            <asp:HiddenField ID="hfCode" runat="server" Value='<%# Eval("code") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Service Price : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="Service_PriceLabel" runat="server" Text='<%# Bind("[Service Price]") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Deposit : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="depositLabel" runat="server" Text='<%# Bind("deposit") %>' />
                        </td>
                    </tr>
                          <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Discount : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("discount","{0:0.00}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right">
                            <asp:Label runat="server" Font-Bold="true">Payment : </asp:Label>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="PaymentLabel" runat="server" Text='<%# Bind("Payment","{0:0.00}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="btnPay" runat="server" OnClick="btnPay_Click" Text="Confirm Payment" CssClass="w3-button w3-teal w3-round-xxlarge" Width="190px" />
                            &nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CssClass="w3-button w3-teal w3-round-xxlarge" Width="190px" OnClick="Button2_Click" PostBackUrl="~/CannotMeh/Payment.aspx" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>

        <asp:FormView ID="FormView2" runat="server" DataKeyNames="payDate" DataSourceID="SqlDataSource2" HorizontalAlign="center" Font-Size="Large">
            <EmptyDataTemplate>
                Payment Date:
                <asp:Label ID="payDateLabel" runat="server" Text='<%# Eval("payDate") %>' />
                <br />
                Customer ID:
                <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                Original Price:RM
                <asp:Label ID="oripriceLabel" runat="server" Text="0"  />
                <br />
                Discount:
                <asp:Label ID="discountLabel" runat="server" Text="0" />
                <br />
                Total amount:
                <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                Service Code:
                <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                <br />
                Beautician ID:
                <asp:Label ID="beatIDLabel" runat="server" Text='<%# Bind("beatID") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="btnPay_Click" Text="Confirm Payment" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </EmptyDataTemplate>
            <ItemTemplate>
                <table style="width: 500px; border: solid">
                    <tr>
                        <td colspan="2" style="font-size: 40px; text-align:center">
                            <asp:Label runat="server" Font-Bold="true">Confirm Payment</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Payment Date : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="payDateLabel" runat="server" Text='<%# Eval("payDate") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Customer HP : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Original Price : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="oripriceLabel" runat="server" Text='0' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Discount : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="discountLabel" runat="server" Text='0' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Total Amount : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Service Code : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right">
                            <asp:Label runat="server" Font-Bold="true">Beautician ID : </asp:Label>
                        </td>
                        <td style="text-align:center">
                            <asp:Label ID="beatIDLabel" runat="server" Text='<%# Bind("beatID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"  style="vertical-align: middle; text-align:center">
                            <asp:Button ID="Button1" runat="server" Text="Confirm Payment" OnClick="btnPay_Click" CssClass="w3-button w3-teal w3-round-xxlarge" Width="190px"/>
                            &nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="w3-button w3-teal w3-round-xxlarge" Width="190px"  />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Payment] WHERE [payDate] = @payDate" InsertCommand="INSERT INTO [Payment] ([payDate], [custID], [amount], [code], [beatID]) VALUES (@payDate, @custID, @amount, @code, @beatID)" SelectCommand="SELECT * FROM [Payment]" UpdateCommand="UPDATE [Payment] SET [custID] = @custID, [amount] = @amount, [code] = @code, [beatID] = @beatID WHERE [payDate] = @payDate">
            <DeleteParameters>
                <asp:Parameter Name="payDate" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="payDate" Type="DateTime" />
                <asp:Parameter Name="custID" Type="String" />
                <asp:Parameter Name="amount" Type="Decimal" />
                <asp:Parameter Name="code" Type="String" />
                <asp:Parameter Name="beatID" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="custID" Type="String" />
                <asp:Parameter Name="amount" Type="Decimal" />
                <asp:Parameter Name="code" Type="String" />
                <asp:Parameter Name="beatID" Type="String" />
                <asp:Parameter Name="payDate" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="prc_payment" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="custid" QueryStringField="custid" Type="String" />
                <asp:QueryStringParameter DefaultValue="" Name="app" QueryStringField="appdate" Type="DateTime" />
                <asp:QueryStringParameter DefaultValue="" Name="beatid" QueryStringField="beatid" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
