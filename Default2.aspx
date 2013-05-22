<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--drop down list set with postback to provide dynamic location information-->
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="locationName" DataValueField="locationid"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="select locationName, locationid from Customer.Location"></asp:SqlDataSource>
        <asp:DetailsView CssClass="datatable" ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="locationName" HeaderText="locationName" SortExpression="locationName" />
                <asp:BoundField DataField="LocationAddress" HeaderText="LocationAddress" SortExpression="LocationAddress" />
                <asp:BoundField DataField="LocationCity" HeaderText="LocationCity" SortExpression="LocationCity" />
                <asp:BoundField DataField="LocationState" HeaderText="LocationState" SortExpression="LocationState" />
                <asp:BoundField DataField="LocationZip" HeaderText="LocationZip" SortExpression="LocationZip" />
                <asp:BoundField DataField="LocationPhone" HeaderText="LocationPhone" SortExpression="LocationPhone" />
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="Select locationName, LocationAddress, LocationCity, LocationState, LocationZip, LocationPhone from customer.Location where LocationID=@locationID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="locationID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
