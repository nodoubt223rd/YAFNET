<%@ Page language="c#" Codebehind="active.aspx.cs" AutoEventWireup="false" Inherits="yaf.active" %>
<%@ Register TagPrefix="yaf" Namespace="yaf.controls" Assembly="yaf" %>

<form runat="server">

<yaf:PageLinks runat="server" id="PageLinks"/>

<table class=command cellspacing=0 cellpadding=0 width="100%">
	<tr>
		<td class=navlinks align=left id=PageLinks1 runat=server></td>
		<td align=right><%= GetText("since") %> <asp:DropDownList id=Since runat="server" AutoPostBack="True"/></td>
	</tr>
</table>

<table class=content cellSpacing=1 cellPadding=0 width="100%">
<tr>
	<td class=header1 width="1%">&nbsp;</td>
	<td class=header1 align=left><%= GetText("topics") %></td>
	<td class=header1 align=left width="20%"><%= GetText("topic_starter") %></td>
	<td class=header1 align=middle width="7%"><%= GetText("replies") %></td>
	<td class=header1 align=middle width="7%"><%= GetText("views") %></td>
	<td class=header1 align=middle width="20%"><%= GetText("lastpost") %></td>
</tr>
<asp:repeater id=TopicList runat="server">
<ItemTemplate>
	<%# PrintForumName((System.Data.DataRowView)Container.DataItem) %>
	<yaf:TopicLine runat="server" DataRow=<%# Container.DataItem %>/>
</ItemTemplate>
</asp:repeater>
<tr>
	<td align=middle colSpan=6 class=footer1>&nbsp;</td>
</tr>
</table>

<table class=command width="100%" cellspacing=0 cellpadding=0>
<tr>
	<td align="left" class=navlinks id=PageLinks2 runat="server"/>
</tr>
</table>

<table width=100% cellspacing=0 cellpadding=0>
<tr>
	<td align=right colspan=2>
		<%= GetText("Forum_Jump") %> <yaf:forumjump runat="server"/>
	</td>
</tr>
<tr>
	<td valign=top><yaf:IconLegend runat="server"/></td>
</tr>
</table>

<yaf:savescrollpos runat="server"/>
</form>
