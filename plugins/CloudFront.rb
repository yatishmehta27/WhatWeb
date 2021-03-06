##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "CloudFront" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-11-02
version "0.1"
description "CloudFront Server"

# ShodanHQ results as at 2010-11-02 #
# 3,530 for X-Cache: Error from cloudfront
# 3,532 for server cloudfront

# Examples #
examples %w|
216.137.33.137
216.137.39.87
216.137.43.71
216.137.55.63
216.137.57.10
216.137.57.11
216.137.57.12
216.137.57.13
216.137.57.14
216.137.57.15
216.137.57.16
216.137.57.17
216.137.57.18
216.137.57.19
216.137.57.20
216.137.59.250
216.137.61.76
216.137.63.66
204.246.169.88
|

matches [

# Error page
{ :status=>403, :text=>"<html><body>Sorry, invalid request</body></html>" },

# HTTP Server Header
{ :search=>"headers[server]", :regexp=>/^CloudFront/ },

# HTTP X-Cache Header
{ :search=>"headers[x-cache]", :regexp=>/^Error from cloudfront/ },

]

end

