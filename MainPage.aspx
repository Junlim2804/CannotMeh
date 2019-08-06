<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="CannotMeh.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.label {
    font-family: JosefinSans-Bold;
    font-size: 30px;
    color: #fff;
    line-height: 1.2;
    text-align: center;
    display: block;
    
    width: 100%;
    top: 0;
    left: 0;
    background-color: #57b846;
    padding-top: 50px;
    padding-bottom: 39px;

}
.button {
  background-color: green;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
}

.button:hover {opacity: 1}
</style>


<body>
    
    <form id="form1" runat="server">
        
        <div style="text-align: center;">
        <span class="label">CannotMeh System</span>
        <div style="width: 400px; margin-left: auto; margin-right:auto;padding-top:50px">
             <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Appointment.aspx">
                 <LayoutTemplate>
                     <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                         <tr>
                             <td>
                                 <table cellpadding="0">
                                     <tr>
                                         <td align="center" colspan="2"></td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="UserName" class="w3-input w3-border w3-sand" runat="server"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="right">
                                             <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                         </td>
                                         <td>
                                             <asp:TextBox ID="Password" class="w3-input w3-border w3-sand" runat="server" TextMode="Password"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td align="center" colspan="2" style="color:Red;">
                                             <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td align="center" colspan="2">
                                             <asp:Button class="button" ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                         </td>
                                     </tr>
                                 </table>
                             </td>
                         </tr>
                     </table>
                 </LayoutTemplate>
             </asp:Login>
 
        </div>
 
        </div>
        
        
    </form>
</body>
</html>
