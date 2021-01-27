cd %~dp0

pandoc README.md -t revealjs -s --slide-level 3 -V revealjs-url=reveal.js -V slideNumber=true --template=template/default.html -V theme=blood -V transition=slide --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -o README.html