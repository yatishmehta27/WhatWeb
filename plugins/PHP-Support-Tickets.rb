##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "PHP-Support-Tickets" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-09-12
version "0.1"
description "PHP Support Tickets - PHP5 / MySQL helpdesk system. - Homepage: http://www.phpsupporttickets.com/"

# Google results as at 2011-09-12 #
# 10 for "PHP Support Tickets" "Log In" intitle:"PHP Support Tickets :: Login"

# Dorks #
dorks [
'"PHP Support Tickets" "Log In" intitle:"PHP Support Tickets :: Login"'
]

# Examples #
examples %w|
www.trinitydesign.co.uk/support/index.php
support.ontariocrackrepair.com
soporte.inetsur.com
support.go2hire.com
www.lomardrivers.com/V2/serviciosweb/phpst_2.2/index.php
www.profohost.com/support_center/index.php
soporte.escolapiosaragon.net/phptickets/
www.luvsms.com/support/index.php
winzone.us/ticket/
|

# Matches #
matches [

# Version Detection # Footer
{ :version=>/<a href="http:\/\/www\.phpsupporttickets\.com" target="_blank" title="php support tickets">PHP Support Tickets v([^\s^<]+)<\/a><br \/><br \/>/ },

# Title
{ :text=>'<title>PHP Support Tickets :: Login</title>' },

# Meta Copyright
{ :certainty=>75, :text=>'<meta name="copyright"   content="Triangle Solutions Ltd" />' },

# HTML Comment
{ :regexp=>/<!--<td class="boxborder list-menu" width="10%"><a href="javascript:popwindow\('help\.php#userpage','top=150,left=300,width=400,height=400,buttons=no,scrollbars=YES,location=no,menubar=no,resizable=no,status=no,directories=no,toolbar=no'\)" title="Help popup">Help<\/a><\/td>-->/ },

]

end

