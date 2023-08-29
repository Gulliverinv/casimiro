<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Clientes.aspx.vb" Inherits="CasiMiro.Web.Clientes" %>

<%@ Register Assembly="DevExpress.Web.v23.1, Version=23.1.4.0, Culture=neutral, PublicKeyToken=B88D1754D700E49A" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDSClientes" KeyFieldName="customer_id">
<SettingsPopup>
<FilterControl AutoUpdatePosition="False"></FilterControl>
</SettingsPopup>
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="customer_id" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False"></EditFormSettings>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="first_name" VisibleIndex="2"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="last_name" VisibleIndex="3"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="phone" VisibleIndex="4"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="email" VisibleIndex="5"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="street" VisibleIndex="6"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="city" VisibleIndex="7"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="state" VisibleIndex="8"></dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="zip_code" VisibleIndex="9"></dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource runat="server" ID="SqlDSClientes" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:storeConnectionString %>' DeleteCommand="DELETE FROM [customers] WHERE [customer_id] = @original_customer_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [email] = @original_email AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([zip_code] = @original_zip_code) OR ([zip_code] IS NULL AND @original_zip_code IS NULL))" InsertCommand="INSERT INTO [customers] ([first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code]) VALUES (@first_name, @last_name, @phone, @email, @street, @city, @state, @zip_code)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [customers]" UpdateCommand="UPDATE [customers] SET [first_name] = @first_name, [last_name] = @last_name, [phone] = @phone, [email] = @email, [street] = @street, [city] = @city, [state] = @state, [zip_code] = @zip_code WHERE [customer_id] = @original_customer_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND [email] = @original_email AND (([street] = @original_street) OR ([street] IS NULL AND @original_street IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([zip_code] = @original_zip_code) OR ([zip_code] IS NULL AND @original_zip_code IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_customer_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_street" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_zip_code" Type="String"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="street" Type="String"></asp:Parameter>
                    <asp:Parameter Name="city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="zip_code" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="first_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="street" Type="String"></asp:Parameter>
                    <asp:Parameter Name="city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="zip_code" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_customer_id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_first_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_last_name" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_street" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_city" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_state" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_zip_code" Type="String"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
