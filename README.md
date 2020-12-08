# bamboosnow
source for bamboo snow disclosures and public facing site for site-master system

This repository holds the sources for each post as converted into an active templateless publishing system.

The sources are written in coffeescript, and executed to produce the final html, somewhat like static sites based on markdown.

However, Markdown proved to be unsatisfactory for the expression of the current and future direction of these posts. For example, http://stjohnsjim.com/story/valkyrie-sms.html -- also published by this system.

For this reason, Markdown was dropped and raw coffeescript used with Teacup signatures provided by https://github.com/jahbini/halvalla. The template structure is Halvalla based coffeescript classes that describe the site temmplate, and an extension class that generates the page's inner content.

The YAML front-end material has been dropped in favor of simple coffeescript executable that is at the bottom of each post.

Productipn of the html is done by https://github.com/jahbini/site-loader, and the actual serving by https://github.com/jahbini/site-master
