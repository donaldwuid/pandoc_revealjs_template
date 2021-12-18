cd %~dp0

:: choco install sass
sass ./custom.scss ./custom.css

:: choco install pandoc
pandoc README.md -t revealjs -s --css=custom.css --mathjax --template=pandoc-templates/default.revealjs -V revealjs-url=reveal.js --slide-level 3  -V slideNumber=true  -V transition=slide -V backgroundTransition=none -o README.html