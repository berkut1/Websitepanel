<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SystemSettings.ascx.cs" Inherits="WebsitePanel.Portal.SystemSettings" %>
<%@ Register TagPrefix="wsp" TagName="CollapsiblePanel" Src="UserControls/CollapsiblePanel.ascx" %>
<%@ Register src="UserControls/EditFeedsList.ascx" tagname="EditFeedsList" tagprefix="uc1" %>
<div class="FormBody">
	<wsp:CollapsiblePanel id="lclSmtpSettings" runat="server"
		TargetControlID="SmtpPanel" meta:resourcekey="lclSmtpSettings" Text="SMTP Server"/>
	<asp:Panel ID="SmtpPanel" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize runat="server" meta:resourcekey="lclSmtpServer" /></td>
				<td><asp:TextBox runat="server" ID="txtSmtpServer" Width="250px" /></td>
			</tr>
			<tr>
				<td class="SubHead"><asp:Localize runat="server" meta:resourcekey="lclSmtpPort" /></td>
				<td><asp:TextBox runat="server" ID="txtSmtpPort" Width="80px" /></td>
			</tr>
			<tr>
				<td class="SubHead"><asp:Localize runat="server" meta:resourcekey="lclSmtpUser" /></td>
				<td><asp:TextBox runat="server" ID="txtSmtpUser" Width="250px" /></td>
			</tr>
			<tr>
				<td class="SubHead"><asp:Localize runat="server" meta:resourcekey="lclSmtpPassword" /></td>
				<td><asp:TextBox runat="server" ID="txtSmtpPassword" TextMode="Password" Width="250px" /></td>
			</tr>
			<tr>
				<td class="SubHead"><asp:Localize ID="locEnableSsl" runat="server" meta:resourcekey="locEnableSsl" /></td>
				<td class="Normal">
					<asp:CheckBox ID="chkEnableSsl" runat="server" Text="Yes" meta:resourcekey="chkEnableSsl" />
				</td>
			</tr>
		</table>
	</asp:Panel>
	<wsp:CollapsiblePanel id="lclBackupSettings" runat="server"
		TargetControlID="BackupPanel" meta:resourcekey="lclBackupSettings" Text="Backup Settings"/>
	<asp:Panel ID="BackupPanel" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize runat="server" meta:resourcekey="lclBackupFolderPath" /></td>
				<td><asp:TextBox runat="server" ID="txtBackupsPath" Width="450px" /></td>
			</tr>
		</table>
	</asp:Panel>

    <wsp:CollapsiblePanel id="lclWpiSettings" runat="server"
		TargetControlID="WpiPanel" meta:resourcekey="lclWpiSettings" Text="Web Platform Installer Settings"/>
	
    <asp:Panel ID="WpiPanel" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize runat="server" meta:resourcekey="lclWpiMainFeedUrl" Text="Main feed URL:" /></td>
				<td><asp:TextBox runat="server" ID="txtMainFeedUrl" Width="450px" /></td>
			</tr>
            <tr>
                <td class="SubHead" style="width:200px; vertical-align: top;"><asp:Localize runat="server" meta:resourcekey="lclWpiCustomFeeds" Text="Custom feeds:" /></td>
                <td>
                    <uc1:EditFeedsList ID="wpiEditFeedsList" runat="server" DisplayNames="false" />
                </td>
            </tr>
		</table>
	</asp:Panel>

    <wsp:CollapsiblePanel id="HeaderFileManagerSettings" runat="server"
		TargetControlID="PanelFileManagereSettings" meta:resourcekey="HeaderFileManagerSettings" Text="File Manager"/>

	<asp:Panel ID="PanelFileManagereSettings" runat="server" Height="0" style="overflow:hidden;">
		<table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblFileManagerEditableExtensions" runat="server" meta:resourcekey="lblFileManagerEditableExtensions" /></td>
				<td><asp:TextBox  TextMode="MultiLine" Rows="10" runat="server" ID="txtFileManagerEditableExtensions" Width="300px" /><asp:Literal ID="litFileManagerEditableExtensions" runat="Server" Text=" (One (1) extension per line)"></asp:Literal></td>
			</tr>
		</table>
	</asp:Panel>

    <wsp:CollapsiblePanel ID="RdsSettings" runat="server" TargetControlID="PanelRdsSettings" meta:resourcekey="RdsSettings" Text="RDS" />
    <asp:Panel ID="PanelRdsSettings" runat="server" Height="0" style="overflow:hidden;">
        <table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblRdsController" runat="server" meta:resourcekey="lblRdsController" />
				<td style="width:200px;">
                    <asp:DropDownList ID="ddlRdsController" runat="server" CssClass="HugeTextBox200"/>
                </td>
			</tr>
		</table>
    </asp:Panel>
    
    <wsp:CollapsiblePanel ID="WebdavPortalSettings" runat="server" TargetControlID="PanelWebdavPortalSettings" meta:resourcekey="WebdavPortalSettings" Text="Webdav Portal" />
    <asp:Panel ID="PanelWebdavPortalSettings" runat="server" Height="0" style="overflow:hidden;">
        <table>
            <tr>
				<td class="SubHead"><asp:Localize ID="locEnablePasswordReset" runat="server" meta:resourcekey="locEnablePasswordReset" /></td>
				<td class="Normal">
					<asp:CheckBox ID="chkEnablePasswordReset" runat="server" Text="Yes" meta:resourcekey="chkEnablePasswordReset" />
				</td>
			</tr>
            <tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblPasswordResetLinkLifeSpan" runat="server" meta:resourcekey="lblPasswordResetLinkLifeSpan" />
				<td><asp:TextBox runat="server" ID="txtPasswordResetLinkLifeSpan" Width="450px" /></td>
			</tr>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblWebdavPortalUrl" runat="server" meta:resourcekey="lblWebdavPortalUrl" />
				<td><asp:TextBox runat="server" ID="txtWebdavPortalUrl" Width="450px" /></td>
			</tr>
            
		</table>
    </asp:Panel>
    
    <wsp:CollapsiblePanel ID="OwaSettings" runat="server" TargetControlID="PanelOwaSettings" meta:resourcekey="OwaSettings" Text="Office Web Apps" />
    <asp:Panel ID="PanelOwaSettings" runat="server" Height="0" style="overflow:hidden;">
        <table>
            <tr>
				<td class="SubHead"><asp:Localize ID="locEnableOwa" runat="server" meta:resourcekey="locEnableOwa" /></td>
				<td class="Normal">
					<asp:CheckBox ID="chkEnableOwa" runat="server" Text="Yes" meta:resourcekey="chkEnableOwa" />
				</td>
			</tr>
            <tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="locOwaUrl" runat="server" meta:resourcekey="locOwaUrl" />
				<td><asp:TextBox runat="server" ID="txtOwaUrl" Width="450px" /></td>
			</tr>
		</table>
    </asp:Panel>
    
    <wsp:CollapsiblePanel ID="TwilioSettings" runat="server" TargetControlID="PanelTwilioSettings" meta:resourcekey="TwilioSettings" Text="Webdav Portal" />
    <asp:Panel ID="PanelTwilioSettings" runat="server" Height="0" style="overflow:hidden;">
        <table>
			<tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblAccountSid" runat="server" meta:resourcekey="lblAccountSid" />
				<td><asp:TextBox runat="server" ID="txtAccountSid" Width="450px" /></td>
			</tr>
            <tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblAuthToken" runat="server" meta:resourcekey="lblAuthToken" />
				<td><asp:TextBox runat="server" ID="txtAuthToken" Width="450px" /></td>
			</tr>
            <tr>
				<td class="SubHead" style="width:200px;"><asp:Localize ID="lblPhoneFrom" runat="server" meta:resourcekey="lblPhoneFrom" />
				<td><asp:TextBox runat="server" ID="txtPhoneFrom" Width="450px" /></td>
			</tr>
		</table>
    </asp:Panel>
</div>
<div class="FormFooter">
	<asp:Button runat="server" ID="btnSaveSettings" meta:resourcekey="btnSaveSettings" 
		CssClass="Button1" OnClick="btnSaveSettings_Click" />
</div>