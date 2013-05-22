<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div id="header">
        <h1>Welcome to Automart</h1>
        <p>All our outlets offer these services.</p>
    </div>
    <form id="form1" runat="server">
    <div>
        <!--data list shows what services are provided at what cost at all locations-->
        <asp:DataList CssClass="datatable" ID="DataList1" runat="server" DataSourceID="localhost">
            <ItemTemplate>
                serviceName:
                <asp:Label ID="serviceNameLabel" runat="server" Text='<%# Eval("serviceName") %>' />
                <br />
                ServicePrice:
                <asp:Label ID="ServicePriceLabel" runat="server" Text='<%# Eval("ServicePrice") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="localhost" runat="server" ConnectionString="<%$ ConnectionStrings:AutomartConnectionString %>" SelectCommand="Select serviceName, Cast(Serviceprice as Decimal(5,2)) as ServicePrice from Customer.Autoservice"></asp:SqlDataSource>
        <!--c# provision for automatic link-->
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Locations</asp:LinkButton>
    </div>
    </form>
</body>
</html>
