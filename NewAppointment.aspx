<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAppointment.aspx.cs" Inherits="CannotMeh.NewAppointmnet" MasterPageFile="~/Site1.Master" %>



<asp:Content ID="content1" ContentPlaceHolderID="ctPlaceholder1" runat="server">

    <div class="w3-container" style="vertical-align:middle; width:1500px">
        <div class="w3-row">
        <div class="w3-col m5">
            <table style="width: 500px; text-align: center; border: solid">
                <tr>
                    <td>
                        <asp:Label runat="server" Font-Bold="true">Customer ID: </asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlcustomer" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="icno" DataValueField="custID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Please Select Customer IC</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblCustID" runat="server" Enabled="true" Text='<%# Bind("custID") %>' />
                    </td>
                    <td>
                        <asp:Button ID="btnChange" runat="server" Text="Change" OnClick="btnChange_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xlarge" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Beautician ID: </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlBeautician" AppendDataBoundItems="True" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="fname" DataValueField="beatID" OnSelectedIndexChanged="DdlBeautician_SelectedIndexChanged">
                            <asp:ListItem>Please Select Beautician ID</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblBeatID" runat="server" Text='<%# Bind("BeatID") %>' />
                    </td>
                    <td>
                        <asp:Button ID="btnChange1" runat="server" Text="Change" OnClick="btnChange1_Click" Visible="False" CssClass="w3-button w3-teal w3-round-xlarge" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Application Date: </label>
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblappdate" runat="server" Text='<%# Bind("appdate") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Select Date: </label>
                    </td>
                    <td colspan="2">
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
                    <td>
                        <label>Select Time: </label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlHour" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTime_SelectedIndexChanged">
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
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Service Code: </label>
                    </td>
                    <td colspan="2">
                        <asp:DropDownList ID="ddlService" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="Ds_code" DataTextField="code" DataValueField="code" OnSelectedIndexChanged="ddlService_SelectedIndexChanged">
                            <asp:ListItem>Select Services</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="Ds_code" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Services]"></asp:SqlDataSource>
                        <asp:Label ID="lblCode" runat="server" Text='<%# Bind("code") %>' Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Total Amount: </label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtTotalPayment" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Deposit: </label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="depositTextBox" runat="server" Text='<%# Bind("deposit") %>' />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" OnClick="InsertButton_Click" />
                        &nbsp;&nbsp;
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="beatID" DataSourceID="DS_beautician_dataview" ForeColor="#333333" GridLines="None" Height="50px" Width="600px" HorizontalAlign="Center"  FieldHeaderStyle-Width="150px">
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

