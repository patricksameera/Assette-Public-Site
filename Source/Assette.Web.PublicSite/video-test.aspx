<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="video-test.aspx.cs" Inherits="Assette.Web.PublicSite.video_test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--StyleSheet Reference--%>
    <link href="styles/assette.css?v=1.0.0.24" rel="stylesheet" />
    <link href="styles/slider.css" rel="stylesheet" />
    <link href="styles/jquery-ui.css" rel="stylesheet" type="text/css" />
    <%--Script Reference--%>
    <script src="scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="scripts/video-test.js" type="text/javascript"></script>
    <%--fancy box--%>
    <link href="scripts/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" />
    <script src="scripts/fancybox/jquery.fancybox.js" type="text/javascript"></script>
    <script src="scripts/fancybox/jquery.fancybox-media.js" type="text/javascript"></script>
    <script src="scripts/fancybox/jquery.fancybox-buttons.js" type="text/javascript"></script>
    <script src="scripts/fancybox/jquery.fancybox-thumbs.js" type="text/javascript"></script>
    <%--jw palyer--%>
    <script type="text/javascript" src="jwplayer/jwplayer.js"></script>
    <script type="text/javascript">        jwplayer.key = "0JBhuZW69VXrcwG7x3PE9fXClC0/muDXzuy2mw==";</script>
    <script type="text/javascript" src="http://www.longtailvideo.com/jw/embed/swfobject.js"></script>
    <%--vimeo--%>
    <script src="scripts/vimeo.js" type="text/javascript"></script>
    <script src="scripts/froogaloop2.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="javascript:void)'0');" class="various_video">Test</a>
    </div>
    </form>
</body>
</html>
