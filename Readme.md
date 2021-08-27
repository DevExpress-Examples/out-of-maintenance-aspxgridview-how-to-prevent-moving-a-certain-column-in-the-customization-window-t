<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128535132/16.2.3%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T526538)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to prevent moving a certain column in the Customization Window
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t526538/)**
<!-- run online end -->


<p>This example demonstrates how to prevent moving certain ASPxGridView columns to the Customization Window. <br>To accomplish this task, you can handle the client-side <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridView_ColumnMovingtopic">ColumnMoving</a> event handler and set the eventArgs <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewScriptsASPxClientGridViewColumnMovingEventArgs_allowtopic">e.allow</a> property to false based on the currently moved column name that can be obtained via the e.sourceColumn.fieldName property.<br><br>The example also demonstrates how to check how many columns are left visible in the grid and prevent moving the last column. This task can be accomplished by obtaining the current visible column count in the server-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridView_AfterPerformCallbacktopic">AfterPerformCallback</a> event handler and passing it to the client side via JSProperties. Then, it's possible to check this value in the ColumnMoving event handler to stop moving.</p>

<br/>


