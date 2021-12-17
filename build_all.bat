cd %~dp0

:: choco install sass
sass ./custom.scss ./custom.css

:: choco install pandoc
pandoc README.md -t revealjs -s --css=custom.css -V revealjs-url=reveal.js --slide-level 3  -V slideNumber=true --template=pandoc-templates/default.revealjs -V transition=slide --mathjax -o README.html