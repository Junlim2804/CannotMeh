﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAppointment.aspx.cs" Inherits="CannotMeh.NewAppointmnet" MasterPageFile="~/Site1.Master" %>



<asp:Content ID="content1" ContentPlaceHolderID="ctPlaceholder1" runat="server">

    <div class="w3-container" style="vertical-align:middle; width:1500px">
        <div class="w3-row">
        <div class="w3-col m5">
            <table style="width: 550px; text-align: center; border: solid">
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Customer HP: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:DropDownList ID="ddlcustomer" CssClass="w3-input w3-border" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="custID" DataValueField="custID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="0">Please Select Customer Handphone No</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlcustomer" display="dynamic" errormessage="Please Select" setfocusonerror="true" initialvalue="0" ValidationGroup="ap" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblCustID" runat="server" Enabled="true" Text='<%# Bind("custID") %>' />
                        <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xlarge" />
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Beautician ID: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px"> 
                        <asp:DropDownList ID="ddlBeautician" CssClass="w3-input w3-border" AppendDataBoundItems="True" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="fname" DataValueField="beatID" OnSelectedIndexChanged="DdlBeautician_SelectedIndexChanged">
                            <asp:ListItem Value="0">Please Select Beautician ID</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlBeautician" display="dynamic" errormessage="Please Select" setfocusonerror="true" initialvalue="0" ValidationGroup="ap" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblBeatID" runat="server" Text='<%# Bind("BeatID") %>' />
                        <asp:Button ID="btnChange1" runat="server" Text="Change" OnClick="btnChange1_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xlarge" />
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Application Date: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:Label ID="lblappdate" runat="server" Text='<%# Bind("appdate") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Select Date: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <div style="margin: 0 auto; width: 200px">
                            <asp:Calendar ID="calAppDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="ddlTime_SelectedIndexChanged" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Select Time: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:DropDownList ID="ddlHour" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">
                            <asp:ListItem Value="0">hour</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp
                    <asp:DropDownList ID="ddlMin" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">
                        <asp:ListItem Value="0">Min</asp:ListItem>
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                    </asp:DropDownList>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHour" display="dynamic" errormessage="Please Select Hour" setfocusonerror="true" initialvalue="0" ValidationGroup="ap" ID="RequiredFieldValidator4" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;<br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlHour" display="dynamic" errormessage="Please Select Minute" setfocusonerror="true" initialvalue="0" ValidationGroup="ap" ID="RequiredFieldValidator5" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Service Name: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:DropDownList ID="ddlService" runat="server" CssClass="w3-input w3-border" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Ds_code" DataTextField="sName" DataValueField="code" OnSelectedIndexChanged="ddlService_SelectedIndexChanged">
                            <asp:ListItem Value="0">Select Services</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlService" display="dynamic" errormessage="Please Select Service" setfocusonerror="true" initialvalue="0" ValidationGroup="ap" ID="RequiredFieldValidator6" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="Ds_code" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [code], [sName], [type], [price] FROM [Services]"></asp:SqlDataSource>
                        <asp:Label ID="lblCode" runat="server" Text='<%# Bind("sName") %>' Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Total Amount: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:TextBox ID="txtTotalPayment" runat="server" CssClass="w3-input w3-border"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding:8px">
                        <asp:Label runat="server" Font-Bold="true">Deposit: </asp:Label>
                    </td>
                    <td colspan="2" style="padding:8px">
                        <asp:TextBox ID="depositTextBox" runat="server" CssClass="w3-input w3-border" Text='<%# Bind("deposit") %>' />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="depositTextBox" ErrorMessage="Please Enter Deposit" ForeColor="Red" ValidationGroup="ap"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="depositTextBox" ErrorMessage="Please Input Number Only" ForeColor="#FF3300" SetFocusOnError="True" ValidationExpression="^\d{0,8}(\.\d{0,2})?$" ValidationGroup="ap"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding:8px">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" CssClass="w3-button w3-teal w3-round-xxlarge" Width="100px" ValidationGroup="ap" />
                        &nbsp;&nbsp;
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="w3-button w3-teal w3-round-xxlarge" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <div class="w3-col m5">
            <div>
                <table>
                    <tr>
                        <td>
                            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="600px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="custID" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" FieldHeaderStyle-Width="150px">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                                <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                                <HeaderTemplate>Customer Details</HeaderTemplate>
                                <Fields>
                                    <asp:BoundField DataField="custID" HeaderText="custID" ReadOnly="True" SortExpression="custID" />
                                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                                    
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
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="beatID" DataSourceID="DS_beautician_dataview" ForeColor="#333333" GridLines="None" Height="50px" Width="600px" HorizontalAlign="Center"  FieldHeaderStyle-Width="150px">
                                <AlternatingRowStyle BackColor="White" />
                                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                                <HeaderTemplate>Beautician Details</HeaderTemplate>
                                <Fields>
                                    <asp:BoundField DataField="beatID" HeaderText="beatID" ReadOnly="True" SortExpression="beatID" />
                                    <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                                    <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                                    
                                    <asp:BoundField DataField="icno" HeaderText="icno" SortExpression="icno" />
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
    </div>
    </div>
    






    <div style="height: 100%; width: 100%; text-align: center; vertical-align: middle; align-content: center">
        <div class="w3-container">
            <div class="w3-row">
                <div class="w3-col m7">
                    <div class="w3-col m7">
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

</asp:Content>

