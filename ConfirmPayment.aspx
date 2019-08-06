<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmPayment.aspx.cs" Inherits="CannotMeh.popup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 22px;
        }
    </style>
</head>
<body>
    <h1>Confirm Payment</h1>    
    <form id="form1" runat="server">

        <asp:FormView ID="FormView1" runat="server" CssClass="auto-style1" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Customer:
                <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                <br />
                custID:
                <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                Beautician:
                <asp:TextBox ID="BeauticianTextBox" runat="server" Text='<%# Bind("Beautician") %>' />
                <br />
                beatid:
                <asp:TextBox ID="beatidTextBox" runat="server" Text='<%# Bind("beatid") %>' />
                <br />
                Appointment Time:
                <asp:TextBox ID="Appointment_TimeTextBox" runat="server" Text='<%# Bind("[Appointment Time]") %>' />
                <br />
                Current Time:
                <asp:TextBox ID="Current_TimeTextBox" runat="server" Text='<%# Bind("[Current Time]") %>' />
                <br />
                Service Name:
                <asp:TextBox ID="Service_NameTextBox" runat="server" Text='<%# Bind("[Service Name]") %>' />
                <br />
                code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                <br />
                Service Price:
                <asp:TextBox ID="Service_PriceTextBox" runat="server" Text='<%# Bind("[Service Price]") %>' />
                <br />
                deposit:
                <asp:TextBox ID="depositTextBox" runat="server" Text='<%# Bind("deposit") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                Payment:
                <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Customer:
                <asp:TextBox ID="CustomerTextBox" runat="server" Text='<%# Bind("Customer") %>' />
                <br />
                custID:
                <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                Beautician:
                <asp:TextBox ID="BeauticianTextBox" runat="server" Text='<%# Bind("Beautician") %>' />
                <br />
                beatid:
                <asp:TextBox ID="beatidTextBox" runat="server" Text='<%# Bind("beatid") %>' />
                <br />
                Appointment Time:
                <asp:TextBox ID="Appointment_TimeTextBox" runat="server" Text='<%# Bind("[Appointment Time]") %>' />
                <br />
                Current Time:
                <asp:TextBox ID="Current_TimeTextBox" runat="server" Text='<%# Bind("[Current Time]") %>' />
                <br />
                Service Name:
                <asp:TextBox ID="Service_NameTextBox" runat="server" Text='<%# Bind("[Service Name]") %>' />
                <br />
                code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                <br />
                Service Price:
                <asp:TextBox ID="Service_PriceTextBox" runat="server" Text='<%# Bind("[Service Price]") %>' />
                <br />
                deposit:
                <asp:TextBox ID="depositTextBox" runat="server" Text='<%# Bind("deposit") %>' />
                <br />
                discount:
                <asp:TextBox ID="discountTextBox" runat="server" Text='<%# Bind("discount") %>' />
                <br />
                Payment:
                <asp:TextBox ID="PaymentTextBox" runat="server" Text='<%# Bind("Payment") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Customer:
                <asp:Label ID="CustomerLabel" runat="server" Text='<%# Bind("Customer") %>' />
                
                <br />
                custID:
                <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
                
                <br />
                Beautician:
                <asp:Label ID="BeauticianLabel" runat="server" Text='<%# Bind("Beautician") %>' />
                
                <br />
                beatid:
                <asp:Label ID="beatidLabel" runat="server" Text='<%# Bind("beatid") %>' />
                <br />
                Appointment Time:
                <asp:Label ID="Appointment_TimeLabel" runat="server" Text='<%# Bind("[Appointment Time]") %>' />
                <br />
                Current Time:
                <asp:Label ID="Current_TimeLabel" runat="server" Text='<%# Bind("[Current Time]") %>' />
                <br />

                Service Name:
                <asp:Label ID="Service_NameLabel" runat="server" Text='<%# Bind("[Service Name]") %>' />
                <br />
                code: <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                <br />
                Service Price:
                <asp:Label ID="Service_PriceLabel" runat="server" Text='<%# Bind("[Service Price]") %>' />
                <br />
                deposit:
                <asp:Label ID="depositLabel" runat="server" Text='<%# Bind("deposit") %>' />
                <br />
                discount:
                <asp:Label ID="discountLabel" runat="server" Text='<%# Bind("discount") %>' />
                <br />

                Payment:
                <asp:Label ID="PaymentLabel" runat="server" Text='<%# Bind("Payment") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <asp:FormView ID="FormView2" runat="server" DataKeyNames="payDate" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                Payment Date:
                <asp:Label ID="payDateLabel1" runat="server" Text='<%# Eval("payDate") %>' />
                <br />
                Customer ID:
                <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                Original Price:
                <asp:Label ID="lblori" runat="server"  />
                <br />
                Discount:
                <asp:Label ID="lbldiscount" runat="server" />
                <br />
                Amount:
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                Service code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                <br />
                Beautician ID:
                <asp:TextBox ID="beatIDTextBox" runat="server" Text='<%# Bind("beatID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
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
            <InsertItemTemplate>
                payDate:
                <asp:TextBox ID="payDateTextBox" runat="server" Text='<%# Bind("payDate") %>' />
                <br />
                custID:
                <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                amount:
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                code:
                <asp:TextBox ID="codeTextBox" runat="server" Text='<%# Bind("code") %>' />
                <br />
                beatID:
                <asp:TextBox ID="beatIDTextBox" runat="server" Text='<%# Bind("beatID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                payDate:
                <asp:Label ID="payDateLabel" runat="server" Text='<%# Eval("payDate") %>' />
                <br />
                Customer ID:
                <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
                <br />
                Original Price:
                <asp:Label ID="oripriceLabel" runat="server" Text='0' />
                <br />
                Discount:
                <asp:Label ID="discountLabel" runat="server" Text='0' />                
                <br />
                Total Amount:
                <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                code:
                <asp:Label ID="codeLabel" runat="server" Text='<%# Bind("code") %>' />
                <br />
                beatID:
                <asp:Label ID="beatIDLabel" runat="server" Text='<%# Bind("beatID") %>' />
                <br />
                &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Confirm Payment" OnClick="btnPay_Click" />
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
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
