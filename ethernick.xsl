<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:aether="http://www.ethernick.com">
<xsl:output method="HTML" doctype-system="" indent="yes" />

<xsl:template match="/">
	<html>
	<head>
	<title>Nick Kempinski's Portfolio</title>
	<meta name="author" content="Nick Kempinski" />
	<meta name="description" content="These are experiments by Nick Kempinski. Focusing on SVG and XML markup to see what can be done." />
	<meta name="viewport" content="width=device-width, height=device-height" />
	<link href="/components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
	<link href="/components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="/assets/css/jumbotron-narrow.css" rel="stylesheet" />
	<link href="/assets/css/ethernick.css" rel="stylesheet" />
	<link title="Nick Kempinski - News" type="application/rss+xml" rel="alternate" href="http://www.ethernick.com/pr.xml"/>
	<link rel="shortcut icon" href="assets/img/favicon.png" />
	</head>
	<body>


	<xsl:apply-templates/>
		<div class="container">
      <div class="footer">
        <p>
					&#xa9; Nick Kempinski 2019
					<a target="social_site" href="http://twitter.com/ethernick"><i class="fa fa-twitter"></i></a>
					<xsl:text> </xsl:text>
					<a target="social_site"  href="http://www.linkedin.com/in/nkempinski"><i class="fa fa-linkedin"></i></a>
					<xsl:text> </xsl:text>
					<a target="social_site"  href="http://www.facebook.com/nkempinski"><i class="fa fa-facebook"></i></a>
				</p>
      </div>
    </div>

	<script type="text/javascript" src="/components/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="/components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/components/jquery-xcolor/jquery.xcolor.min.js"></script>
	<script type="text/javascript" src="/components/cheet.js/cheet.min.js"></script>
	<script type="text/javascript" src="/assets/js/ethernick.js"></script>

	<script type="text/javascript">

	<![CDATA[

	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-130582-8']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();

	]]>

	</script>
  </body>
</html>

</xsl:template>

<xsl:template match="/html">

  <div class="jumbotron">
		<div class="container">
			<svg id="logo" width="90%" height="40%" class="locked" preserveAspectRatio="xMinYMin meet">
			   <line x1="15%" y1="0" x2="15%" y2="100%" class="line" />
			   <line x1="15%" y1="0" x2="50%" y2="100%" class="line" />
			   <line x1="50%" y1="0" x2="50%" y2="100%" class="line" />
			   <line x1="50%" y1="50%" x2="85%" y2="0%" class="line" />
			   <line x1="50%" y1="50%" x2="85%" y2="100%" class="line" />
			</svg>
			<h1>Nick Kempinski</h1>
	    <p class="lead">I believe every aspect of our lives sends a message and it's up to us to choose whether we follow it, interpret it, or design it.</p>
	    <div class="refresh hidden-xs">
	       <i class="fa fa-info-circle"></i> try arrow left, right
	    </div>
		</div>
  </div>

	<div class="container">
      <div class="row marketing">
			<xsl:for-each select="document('pr.xml')/rss/channel[1]/item[position() &gt;= 1 and position() &lt; 4]">
				<div class="col-xs-6 hnews hentry item">
					<h4>
						<a class="url">
							<xsl:attribute name="href">
								<xsl:value-of select="link"/>
							</xsl:attribute>
							<span class="entry-title">
								<xsl:value-of select="title"/>
							</span>
						</a>
					</h4>
					<p>
						<xsl:value-of select="description" disable-output-escaping="yes"/>
					</p>
				</div>
			</xsl:for-each>

		  <div class="col-xs-6">
          <h4><a href="http://www.linkedin.com/in/nkempinski">About Me</a></h4>
          <p>I've been toying around the web for roughly 20 years. Everything from
					UI, server admin &amp; db work. Lately I'm doscovering projects that
					light my passions.</p>
          </div>

		  <div class="col-xs-6">
          <h4><a href="http://twitter.com/ethernick">Contact Me</a></h4>
          <p>
			google "<a target="social_site" href="https://www.google.ca/search?q=ethernick">ethernick</a>"
			or "<a target="social_site"  href="https://www.google.ca/search?q=%22nick+kempinski%22">nick kempinski</a>"
			or "<a target="social_site"  href="https://www.google.ca/search?q=nkempinski">nkempinski</a>."
			Email <small>nick &#91;&#97;t] &#119;hoisnick [&#100;o&#116;&#93; co&#109;</small>.<br />
			Socializing on
			<a target="social_site" href="http://twitter.com/ethernick"><i class="fa fa-twitter"></i></a>
			<xsl:text> </xsl:text>
			<a target="social_site"  href="http://www.linkedin.com/in/nkempinski"><i class="fa fa-linkedin"></i></a>
			<xsl:text> </xsl:text>
			<a target="social_site"  href="http://www.facebook.com/nkempinski"><i class="fa fa-facebook"></i></a>.
		  </p>
	      </div>
      </div>
		</div>
</xsl:template>

<xsl:template match="rss">

  <div class="jumbotron mini">
		<div class="container">
			<a href="/">
				<svg id="logo" width="40%" height="17%" class="locked" preserveAspectRatio="xMinYMin meet">
					<line x1="15%" y1="0" x2="15%" y2="100%" class="line" />
					<line x1="15%" y1="0" x2="50%" y2="100%" class="line" />
					<line x1="50%" y1="0" x2="50%" y2="100%" class="line" />
					<line x1="50%" y1="50%" x2="85%" y2="0%" class="line" />
					<line x1="50%" y1="50%" x2="85%" y2="100%" class="line" />
				</svg>
			</a>
			<div class="refresh hidden-xs">
	       <i class="fa fa-info-circle"></i> try arrow left, right
	    </div>
		</div>
  </div>
	<div class="container">
		<xsl:apply-templates match="channel"/>
	</div>

</xsl:template>

<xsl:template match="channel">
  <xsl:apply-templates match="item">
    <xsl:sort select="guid" data-type="number" order="descending"/>
  </xsl:apply-templates>
</xsl:template>

<xsl:template match="item">
      <div class="row hnews hentry item">
				<h4>
					<a class="url">
						<xsl:attribute name="href">
							<xsl:value-of select="link"/>
						</xsl:attribute>
						<span class="entry-title">
							<xsl:value-of select="title"/>
						</span>
					</a>
				</h4>
				<p>
					<xsl:value-of select="description" disable-output-escaping="yes"/>
				</p>
				<small>Posted: <xsl:value-of select="pubDate"/></small>
				<hr />
			</div>
</xsl:template>

<xsl:template match="text()"/>

</xsl:stylesheet>
