##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "Dell-KACE-Appliance" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-05-02
version "0.1"
description "Dell KACE System Management Appliance - Homepage: http://www.kace.com/products/overview"

# ShodanHQ results as at 2012-05-02 #
# 284 for X-KBOX-WebServer
# 185 for X-DellKACE-Version

# Examples #
examples %w|
66.195.246.235
169.199.80.116
209.161.160.100
67.129.64.8
97.65.106.46
114.111.132.51
|

# Matches #
matches [

# /common/about.php # Version Detection
{ :url=>"/common/about.php", :version=>/<b>K1000 Systems Management Appliance<\/b> <b>v([^\s^<]+)<\/b>/ },

# X-DellKACE-Version # Version Detection
{ :search=>"headers[x-dellkace-version]", :version=>/^(.+)$/ },

# X-DellKACE-Host # Server Name Detection
{ :search=>"headers[x-dellkace-host]", :string=>/^(.+)$/ },

# X-KBOX-Version # Version Detection
{ :search=>"headers[x-kbox-version]", :version=>/^(.+)$/ },

# X-KBOX-WebServer # Server Name Detection
{ :search=>"headers[x-kbox-webserver]", :string=>/^(.+)$/ },

]

end

