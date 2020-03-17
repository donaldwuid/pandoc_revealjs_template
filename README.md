% Template Title
% Your Name
% Date


# Template Title

Your Name

Your Date


::: {.columns}

::: {.column width="80%"}
:::

::: {.column width="20%"}

<div class="smaller">

- `Space`: next page，
- `Esc`: overview，
- `Arrow`: navigation，
- `Alt + mouse left`：magnify，
- `S`：notes

</div>

:::
:::


## What is it

::: incremental

- It converts **Markdown**...
- into a **Presentation**!

:::

. . .

The presentation is just a web page:  [README.html](https://donaldwuid.github.io/pandoc_revealjs_template/README.html#/template-title) 


## How it works

Use **pandoc** to convert **markdown** to presentation as html+reveal.js.

- [pandoc](http://pandoc.org): a markdown(, etc.) file converter
- [reveal.js](http://lab.hakim.se/reveal-js/#/): a HTML presentation framework.


# Features

## Text Formats

- *emphasized*
- **strong emphasis**
- ~~deleted text~~
- H~2~O is a liquid.  2^10^ is 1024
- P~a\ cat~
- *\*escape\**
- `*Verbatim*`
- [Small caps]{.smaller}


## Image

![](assets/hearthstone.jpg){width=40%}


## Local Video

<iframe width="560" height="315" src="assets/video.mp4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## Youtube Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/vPguoeYTvMI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Internal links

See the [Next topick Columns](#ColumnsIdentifier).

## Ending a list

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


## Columns {#ColumnsIdentifier}

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

## Notes

press `S` to show the page note.

::: notes

speak this comment on this page

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

* [MathJax basic tutorial and quick reference](http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference)
* [Draw your LaTeX](http://detexify.kirelabs.org/classify.html)
* inline mode: `$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$`: $\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$
* display mode: `$$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$`: $$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$


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


## Styles

You can customize styles in *default.html*

```js
<style>
.smaller { font-size: 0.8em }
</style>
```

<div class="smaller">
and use it here.
</div>

```
<div class="smaller">...</div>
```

# How to build

## Install
install [pandoc](http://pandoc.org/installing.html) first.

## Build

run *build.bat* or *build.sh*, or execute in commandline:
```
pandoc main.md -t revealjs -s --slide-level 2 -V slideNumber=true --template=template/default.html -V theme=blood -V transition=slide --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -o main.html
```


# Thanks

# References

[Pandoc’s Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown)