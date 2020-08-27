<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <script>
  function onColumnMoving(s, e) {
   if (e.sourceColumn.fieldName == "CategoryID" && cbCategory.GetChecked() || s.cpOneColumnInHeader == true)
    if (e.isGroupPanel == false && e.destinationColumn == null)
     e.allow = false;
  }
  function OnBtnToggleCustomWindowClick(s, e) {
   if (grid.IsCustomizationWindowVisible())
    grid.HideCustomizationWindow();
   else
    grid.ShowCustomizationWindow();
  }
 </script>
</head>
<body>
    <form id="form1" runat="server">
       <dx:ASPxButton ID="buttonToggleCustomWindow" runat="server" ClientInstanceName="btnToggleCustomWindow"
        Text="Show Customization Window" AutoPostBack="false" Width="250px">
         <ClientSideEvents Click="OnBtnToggleCustomWindowClick" />
      </dx:ASPxButton>
       <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" ClientInstanceName="cbCategory" Text="Forbid hiding the CategoryID column" AutoPostBack="false">
       </dx:ASPxCheckBox>
      <br />
     <dx:ASPxGridView ID="GridView" ClientInstanceName="grid" DataSourceID="AccessDataSource1" OnAfterPerformCallback="GridView_AfterPerformCallback" KeyFieldName="ProductID" runat="server">
      <ClientSideEvents ColumnMoving="onColumnMoving" />
      <SettingsBehavior EnableCustomizationWindow="true" />
      <Columns>
       <dx:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="1" >
       </dx:GridViewDataTextColumn>
       <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
       </dx:GridViewDataTextColumn>
       <dx:GridViewDataTextColumn FieldName="UnitsInStock" VisibleIndex="3">
       </dx:GridViewDataTextColumn>
       <dx:GridViewDataTextColumn FieldName="CategoryID" VisibleIndex="4">
       </dx:GridViewDataTextColumn>
       <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" VisibleIndex="5">
       </dx:GridViewDataTextColumn>
      </Columns>
     </dx:ASPxGridView>

     <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:AccessDataSource>
    </form>
</body>
</html>
