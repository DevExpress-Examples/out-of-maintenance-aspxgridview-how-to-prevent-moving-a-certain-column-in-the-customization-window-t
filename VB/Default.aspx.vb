Imports Microsoft.VisualBasic
Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If (Not IsPostBack) Then
			GridView.JSProperties("cpOneColumnInHeader") = False
		End If
	End Sub
	Protected Sub GridView_AfterPerformCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridViewAfterPerformCallbackEventArgs)
		If e.CallbackName = "COLUMNMOVE" Then
			Dim gridView As ASPxGridView = CType(sender, ASPxGridView)
			gridView.JSProperties("cpOneColumnInHeader") = False
			Dim visibleColNumber As Integer = 0
			For Each column As GridViewColumn In gridView.Columns
			   If column.Visible Then
				 visibleColNumber += 1
			   End If
			Next column
			If visibleColNumber=1 Then
			  gridView.JSProperties("cpOneColumnInHeader") = True
			End If
		End If
	End Sub
End Class