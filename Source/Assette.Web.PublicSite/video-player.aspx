<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="video-player.aspx.cs" Inherits="Assette.Web.PublicSite.video_player" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <%--jquery--%>
    <script src="scripts/jquery-1.7.2.js" type="text/javascript"></script>
    <%--share this--%>
    <script type="text/javascript">        var switchTo5x = false;</script>
    <script type="text/javascript" src="http://w.sharethis.com/button/buttons.js"></script>
    <script type="text/javascript">        stLight.options({ publisher: "62df8832-b028-4ed4-8a10-ec8009f55605", doNotHash: true, doNotCopy: true, hashAddressBar: false });</script>
    <%--jw palyer--%>
    <script type="text/javascript" src="jwplayer/jwplayer.js"></script>
    <script type="text/javascript">        jwplayer.key = "0JBhuZW69VXrcwG7x3PE9fXClC0/muDXzuy2mw==";</script>
    <script type="text/javascript" src="http://www.longtailvideo.com/jw/embed/swfobject.js"></script>
    <%--video js--%>
    <script src="scripts/video.js" type="text/javascript"></script>
    <title></title>
    <style type="text/css">
        body
        {
            overflow-y: hidden;
            margin-top: 0px;
            margin-left: 0px;
            margin-right: 0px; /*margin-bottom: 0px;*/
        }
        
        .share_section
        {
            position: absolute;
            z-index: 99999; /* this place the content over the fancybox */
            background: #f2f2f2; /*width: 100px;*/ /*height: 100px;*/
            padding-left: 5px;
            padding-right: 5px;
            display: block;
            opacity: 0.9;
            filter: alpha(opacity=90); /* For IE8 and earlier */
            border: 1px solid #6f6f6f;
            display: none;
            padding-top: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="video_container">
    </div>
    <div id="video" class="product_details_video">
        <div class='share_section'>
            <%--facebook --%>
            <span class='st_facebook_large' st_url="http://www.assette.com/gallery" st_title="Check out Assette. They have everything you need to effectively communicate investment results to clients. See the comprehensive library of reports at ">
            </span>
            <%--twitter--%>
            <span class="st_twitter_large" st_url="http://www.assette.com/gallery" st_title="Everything you need to effectively communicate with clients! Check out ">
            </span>
            <%--linkedin--%>
            <span class='st_linkedin_large' st_title="Assette Gallery" st_summary="Check out Assette. They have everything you need to effectively communicate investment results to clients. See the comprehensive library of reports at "
                st_url="http://www.assette.com/gallery"></span>
        </div>
    </div>
    </form>
</body>
</html>
