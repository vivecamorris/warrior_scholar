[1mdiff --git a/app/views/layouts/application.html.erb b/app/views/layouts/application.html.erb[m
[1mindex 46275fc..d70986a 100644[m
[1m--- a/app/views/layouts/application.html.erb[m
[1m+++ b/app/views/layouts/application.html.erb[m
[36m@@ -12,10 +12,10 @@[m
     <![endif]-->[m
 [m
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>[m
[31m-    <link href='http://yui.yahooapis.com/pure/0.5.0/forms-min.css' rel='stylesheet' type='text/css'>[m
[31m-[m
[31m-    <link href='http://yui.yahooapis.com/pure/0.5.0/buttons-min.css' rel='stylesheet' type='text/css'>[m
[32m+[m	[32m<link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.5.0/pure-min.css">[m
 [m
[32m+[m[32m<!-- 	<meta name="viewport" content="width=device-width, initial-scale=1">[m
[32m+[m[32m -->[m
 </head>[m
 <body>[m
 [m
[1mdiff --git a/app/views/static_pages/home.html.erb b/app/views/static_pages/home.html.erb[m
[1mindex 993c1dc..5814cf0 100644[m
[1m--- a/app/views/static_pages/home.html.erb[m
[1m+++ b/app/views/static_pages/home.html.erb[m
[36m@@ -1,5 +1,5 @@[m
 <div id = "home-background">[m
[31m-	<%= image_tag( "background.png", :alt => "background of soldier holding books" ) %>[m
[32m+[m	[32m<%= image_tag( "background.png", :alt => "background of soldier holding books") %>[m
 </div>[m
 [m
 <%= link_to image_tag("starlogo.png", alt: "The Warrior-Scholar Project", id: "logo"), 'http://www.warrior-scholar.org'  %>[m
