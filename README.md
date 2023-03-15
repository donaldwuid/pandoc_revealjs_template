---
title: "Your Title"
author: Your Name

title-slide-attributes:
	data-background-image: ./assets/hearthstone.jpg
    data-background-size: cover
	data-background-opacity: 0.3

include-before: <div class="floatTR"><img src="assets/pandoc.png" height="32"/><img src="assets/revealjs.png" height="32"/></div>

numbersections: true
history: true
slideNumber: true
transition: slide
backgroundTransition: none
---



## Quick guide

<div class="smallest">

- `Space`: next page，
- `Arrow`: navigation，
- `F`: fullscreen,
- `Esc` or `O`: overview，
- `Alt + mouse left`：magnify，
- `S`：notes

</div>

## What is it

::: incremental


- It converts **Markdown**...
- into a **Presentation**!

:::

. . .

The presentation is just a web page:  [README.html](https://donaldwuid.github.io/pandoc_revealjs_template/README.html#/template-title) 


## How it works


it uses **pandoc** to convert **markdown** to presentation as **html+reveal.js**.

- `pandoc(markdown) -> html`
- [pandoc](http://pandoc.org): a markdown(, etc.) document converter
- [reveal.js](http://lab.hakim.se/reveal-js/#/): a HTML presentation framework.

![](./assets/pandoc.png)
![](./assets/revealjs.png)

# Features

## Titles with 1 slide

Usually use title to separate slides

## Titles with 2 slides

For topic including several slides, you can use `---` to separate slides.

To be continued...

---

Former title is Continued in this new slide by `---`



## Text Formats

- *emphasized*
- **strong emphasis**
- ~~deleted text~~
- H~2~O is a liquid.  2^10^ is 1024
- P~a\ cat~
- `Verbatim`
- *\*escape\**


## Text Custom Styles

- [Custom style: smallest]{.smallest}
- [Custom style: dim]{.dim}
- [Custom style: invert]{.invert}


[see or edit **./custom.scss** for your own custom style]{.smallest}

## General Custom Styles


```js
<style>
.smaller { font-size: 80% }
.smallest { font-size: 50% }
</style>

```

<div class="smaller">
and make content smaller by: 
</div>

```
[make single line smaller]{.smaller}

<div class="smaller">
whole block inside a page section
</div>
```

[or smallest by: ]{.smallest}

```
[make single line smallest]{.smallest}

<div class="smallest">
whole block inside a page section
</div>
```


[see or edit **./custom.scss** for your own custom style]{.smallest}


## Notes

press `S` to show the page note.

::: notes

this amazing comment on this page may help you a lot!

:::


## Image

![](assets/hearthstone.jpg){width=40%}


## Background Image {background-image="./assets/hearthstone.jpg"}

add background image by 

```md
Background Image {background-image="./assets/hearthstone.jpg"}
```


## Custom style Background {background-image="./assets/hearthstone.jpg" data-state="bgdimmer"}

custom style by adding `data-state="bgdimmer"`

```md
Custom style Background {background-image="./assets/hearthstone.jpg" data-state="bgdimmer"}
```


[see or edit **./custom.scss** for your own custom style]{.smallest}

## Local Video


using `<video>`

<video height="315" autoplay controls loop>
    <source src="assets/video.mp4" type="video/mp4">
</video>


## Local Video

using `<iframe>`, for better layout

<iframe width="560" height="315" src="assets/video.mp4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Youtube Video {#YoutubePageId}

<iframe width="560" height="315" src="https://www.youtube.com/embed/vPguoeYTvMI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Note: not all youtube video can be embeded, it depends on the uploader's setting.

## Background Video {data-background-video="./assets/video.mp4"}

add background vide by 

```md
Background Video {data-background-video="./assets/video.mp4"}
```


## Custom style Background Video {data-background-video="./assets/video.mp4" data-state="bgdimmer"}

add background vide by 

```md
Background Video {data-background-video="./assets/video.mp4" data-state="bgdimmer"}
```


## Embed

Embed anohter page, e.g., a complex interactive page by 

```html
<iframe src=assets/plot.html width="800" height="450"></iframe>
```


<iframe src=assets/plot.html width="800" height="450"></iframe>

- touch the embeded frame to interact with it,
- touch anywhere else to get focus back to revealjs.

<div class="smallest">

see also [pyecharts](https://github.com/pyecharts/pyecharts/blob/master/README.en.md) for how to generate this plot page

</div>




## Internal links

See the [Next topic](#EndingAlistId).

## Ending a list {#EndingAlistId}

1.  one
2.  two
3.  three

<!-- -->

1.  uno
2.  dos
3.  tres

## Numbered example lists

(@) Hello.
(@good) This is a good example.

As (@good) illustrates, ...

## Inserting pauses

content before the pause

. . .

content after the pause


## Incremental lists

::: nonincremental

- Eat spaghetti
- Drink wine

:::

or 

::: incremental

- Eat spaghetti
- Drink wine

:::


## Incremental lists 2

> - Item 1
> - Item 2
> - Item 3


## Auto Animate {data-auto-animate="1"}

enable auto slide by `{data-auto-animate="1"}`


Animated lists:

- A
- C
- E


Animated `div`:

<div data-id="box" style="height: 200px; background: blue;"></div>


## Auto Animate {data-auto-animate="1"}

enable auto slide by `{data-auto-animate="1"}`

Animated lists:

- A
- B
- C
- D
- E


Animated `div`:

<div data-id="box" style="height: 50px; background: salmon;"></div>

## Columns

::: {.columns}
::: {.column width="40%"}

Column One

- hello
- world

:::
::: {.column width="60%"}

Column Two

![](assets/hearthstone.jpg){ width=50% }

:::
:::


## Table

| Table | A | B | C |
|--|--|--|--|
| 1 | a1 | b1 | c1 |
| 2 | a2 | b2 | c2 |
| 3 | a3 | b3 | c3 |


## Task

- [ ] an unchecked task list item
- [x] checked item


## MathJax

- [MathJax basic tutorial and quick reference](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference),
- Draw your LaTeX [here](http://detexify.kirelabs.org/classify.html),
- inline mode: $\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$,
- display mode: $$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$


## Codes

```c++
#include <iostream>
int main(int argc, char** argv) {
	std::cout << "I'm c++!";
	return 0;
}
```


```python
print("I'm Python!")
```


## Header or Footer logo

Notice the pandoc and revealjs logo in the corner? Add it in the YAML metadata block (the start of this markdown)



```yaml
---
include-before: <div class="floatTR"><img src="assets/pandoc.png" height="32"/><img src="assets/revealjs.png" height="32"/></div>
---
```

See the [Custom Build Settings](#CustomBuildSettingsId) page for more detail.



# How to build

## Install

install [pandoc](http://pandoc.org/installing.html) first.

```sh
# mac
brew install pandoc
```
```cmd
:: windows
choco install pandoc
```

## Build

- run **./build_presentation** script, 
- or execute in commandline:


```sh
pandoc README.md -t revealjs -s --css=custom.css --mathjax --template=pandoc-templates/default.revealjs -V revealjs-url=reveal.js --slide-level 3 -o README.html
```

## Custom build settings  {#CustomBuildSettingsId}

adjust custom build settings in YAML metadata block (the start of this markdown)

```yaml
---
numbersections: true
history: true
slideNumber: true
transition: slide
backgroundTransition: none
---
```

or in the command line script:

```sh
pandoc README.md ... -V revealjs-url=reveal.js ... -o README.html
```



## Custom style

this template uses **custom.css** for custom style. 

If you want to edit and rebuild **custom.scss** into **custom .css**, [sass](https://sass-lang.com/install) is required.

- install scss first
```sh
# mac
brew install sass/sass/sass
```
```cmd
:: windows
choco install sass
```
- build custom.scss into custom.css
```sh
sass ./custom.scss ./custom.css
```

run **./build** script to build both css and presentation.




# Export to PDF

## PDF by RevealJS `?print-pdf`

1. In your browser
1. add `?print-pdf` to the url: `file:///...README.html?print-pdf`
1. Use your web browser to "print" the presentation web page to PDF.

## PDF by Pandoc

Pandoc uses LaTeX to convert your markdown to PDF,

- install LaTeX [here](https://miktex.org/download),
- in the head of this markdown file, make sure the metadata exists,
- make sure metadata's font name existed in your computer, otherwise, change it,
- run the *build_pdf* script


# Thanks

# References

1. [Pandoc’s Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown)
1. [Revealjs Home](https://revealjs.com/auto-animate/)