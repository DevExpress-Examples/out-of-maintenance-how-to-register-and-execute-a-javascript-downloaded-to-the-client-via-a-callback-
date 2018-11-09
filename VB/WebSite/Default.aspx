<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="JSCallback.Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTabControl"  TagPrefix="dx"%>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxClasses"  TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" Height="71px"
				Width="255px" EnableCallBacks="True" EnableViewState="False">
				<TabPages>
					<dx:TabPage Text="Sample description">
						<ContentCollection>
							<dx:ContentControl runat="server">
								This ASPxPageControl's EnableCallbacks property is set to true. 
								The second tab page's content contains a JavaScript block, which 
								is downloaded via a callback when the tab page becomes active for 
								the first time. Pay attention to an identifier defined for the 
								script block.
							</dx:ContentControl>
						</ContentCollection>
					</dx:TabPage>
					<dx:TabPage Text="Page with script block">
						<ContentCollection>
							<dx:ContentControl runat="server">
								<script id="dxis_showDate" type="text/javascript" src="JScript.js">
								</script>
								<dx:ASPxButton ID="btnShowTime" runat="server" AutoPostBack="False" 
									Text="Show current time">
									<ClientSideEvents Click="OnShowTimeButtonClick" />
								</dx:ASPxButton>
							</dx:ContentControl>
						</ContentCollection>
					</dx:TabPage>
				</TabPages>
			</dx:ASPxPageControl>
	</div>
	</form>
</body>
</html>