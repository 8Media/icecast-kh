<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version = "1.0">
<xsl:output omit-xml-declaration="no" method="xml" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" indent="yes" encoding="UTF-8" />
<xsl:template match = "/icestats">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Icecast Streaming Media Server</title>
	<link rel="stylesheet" href="style.css"/>     
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes" />
</head>
<body>
	<div class="top-bar">
                    <div class="top-bar-left">
                        <ul class="menu">
                            <li class="menu-text">ICECAST Powerd by MIHI7</li>
                            <li>
                                <a href="admin/">Administration</a>
                            </li>
                            <li>
                                <a href="status.xsl">Server Status</a>
                            </li>
                            <li>
                                <a href="server_version.xsl">Version</a>
                            </li>
                        </ul>
                    </div>
                </div>
<div class="row">
                    <div class="large-4 columns">
                        This ICECAST server is a part of MIHI7.com global radio destribution network. For more information please visit <a href="https://mihi7.com">mihi7.com</a>
                    <hr/>
                    </div>
                    
                    <div class="large-8 columns">
	<div class="roundbox">
		<h3>Server Information</h3>
		<table class="yellowkeys">
			<tbody>
				<xsl:for-each select="/icestats">
				<tr>
					<td>Location</td>
					<td><xsl:value-of select="location" /></td>
				</tr>
				<tr>
					<td>Admin</td>
					<td><xsl:value-of select="admin" /></td>
				</tr>
				<tr>
					<td>Host</td>
					<td><xsl:value-of select="host" /></td>
				</tr>
				<tr>
					<td>Version</td>
					<td><xsl:value-of select="server_id" /></td>
				</tr>
				</xsl:for-each>
				<tr>
					<td>Download</td>
					<td><a href="http://icecast.org/download.php">icecast.org</a></td>
				</tr>
				<tr>
					<td>Subversion</td>
					<td><a href="http://icecast.org/svn.php">icecast.org/svn.php</a></td>
				</tr>
				<tr>
					<td>Documentation</td>
					<td><a href="http://icecast.org/docs.php">icecast.org/docs.php</a></td>
				</tr>
				<tr>
					<td>Stream Directory</td>
					<td><a href="http://dir.xiph.org/index.php">dir.xiph.org</a></td>
				</tr>
				<tr>
					<td>Community</td>
					<td><a href="http://icecast.org/community.php">icecast.org/community.php</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div id="footer">
                            <hr/>
                            Support icecast development at <a href="http://www.icecast.org">www.icecast.org</a>
                        <br/>
                        MIHI7 Radio Destribution Network <a href="https://mihi7.com">www.mihi7.com</a>
                        </div>
                    </div>
                </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
