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
                       <h3>Login</h3>

                       <table style="width:100%;">
                           <tr>
                               <td>Username:</td>
                               <td> <asp:Textbox id="UsernameTextbox" runat="server"/></td>
                           </tr>
                           <tr>
                               <td>Password:</td>
                               <td> <asp:Textbox id="PasswordTextbox" runat="server" TextMode="Password"  />
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;</td>
                               <td>&nbsp;</td>
                           </tr>
                       </table>

            <br />

          &nbsp;<br />
                       &nbsp;
                    <br />

          <asp:Label id="Msg" ForeColor="maroon" runat="server" /><br />
 
          <asp:Button id="LoginButton" Text="Login" OnClick="Login_OnClick" runat="server" />
          &nbsp;</div>
        
 
        </div>
     
        
    </form>
</body>
</html>
