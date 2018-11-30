<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="client-list.ascx.cs"
    Inherits="Assette.Web.PublicSite.usercontrol.client_list" %>
<asp:ListView ID="lstvwClients" runat="server" ViewStateMode="Disabled">
    <LayoutTemplate>
        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
    </LayoutTemplate>
    <ItemTemplate>
        <div class="testimonial_spacer">
        </div>
        <div class="testimonial_image">
            <a class="lnkblue" title="<%# Eval("Name")%>" target="_blank" href="<%# Eval("WebURL")%>">
                <img src="clientlogos/<%# Eval("LogoURL")%>" alt="" /></a></div>
        <div class="testimonial_wealth">
            <span style="color: #6F6F6F;">AUM <b>$<%# Eval("AUM")%></b></span>
        </div>
        <div class="testimonial_spacer">
        </div>
    </ItemTemplate>
</asp:ListView>
