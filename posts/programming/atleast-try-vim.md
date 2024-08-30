-   [Home](../../index.html)
-   [Blog](../../blog-index.html)
-   [About](../../about.html)

# Why You Should At Least Try Vim Once

Vim, or NeoVim, is the text editor that I am sure almost every tech
savvy person must have heard of. Though only few people use it on daily
basis.

In this post, I will highlight some native features of Vim which I
believe, that other command line editors and IDEs lack. Expect maybe
Emacs which has most of them but with different keybindings and
philosophy.

This isn\'t a comprehensive tutorial. Vim has lots of useful features
that it would be impossible to cover it in a single post. If you need a
comprehensive tutorial then refer to [official
documentation](https://vim.org/docs.php) or run ` vimtutor ` command.

Table of Contents

-   [Basics](#basics)
-   [Navigation](#navigation)
-   [Editing](#editing)
    -   [Spell checking](#spell-checking)
-   [Multiple windows](#multiple-windows)
-   [Registers](#registers)
-   [Examples](#examples)

------------------------------------------------------------------------

::: {#basics .section}
### Basics

Vim keybindings are all case-sensitive, and follow this
structure\[int\] + verb + object.

`i` Enter insert mode.

`A` Jump to one character ahead of the end of the line and enter insert
mode.

`:!` Run external command.

`:r!` Run external command and paste output into the current cursor
position.

`:h keyword` Browse documentation for the keyword.

------------------------------------------------------------------------
:::

::: {#navigation .section}
### Navigation

`h/j/k/l` Move left, down, up, right.

`G` Move to end of the buffer.

`gg` Move to beginning of the buffer.

`b` Move to previous word.

`w` Move to the next word.

`mX` Set a mark at current position with x

`` `X `` Jump to position of mark X.

`tX` Jump forward till the next occurrence of X.

`TX` Jump backward till the previous occurrence of X.

`^` Jump to first non blank character in current line.

`$` Jump to last non-blank character in current line.

`zf` Create a fold.

`za` Unfold the selection.

`K` Pass the current word to `keywordprg` . By default, its `man` but
can be configured to use any other program like `sdcv`, `pydoc`.
:::

------------------------------------------------------------------------

::: {#editing .section}
### Editing

`~` Switch case of a single character.

`A` Jump to enter end of line and enter insert mode.

`c` Delete a single character and enter insert mode

`x` Delete a single character.

`C-a` Increase the number at current position by one.

`C-x` Decrease the number at current position by one.

------------------------------------------------------------------------
:::

::: {#spell-checking .section}
#### Spell Checking

`:set spell` Turn on spell check.

`z=` Show suggestions.

------------------------------------------------------------------------
:::

::: {#multiple-windows .section}
## Multiple Windows

`C-w h/j/k/l` Navigate through windows, in left, down, up, right
direction.

`C-w s` Split current window.

`C-w o` Close all other windows.

`:vsplit filename` Open the specified file in a vertical split.

`:split filename` Open the specified file in a horizontal split.

------------------------------------------------------------------------
:::

::: {#registers .section}
### Registers

`qX` Record a macro at register X.

`@X` Play the macro X.

`"X` Paste the content of the register X.

------------------------------------------------------------------------
:::

::: {#examples .section}
## Examples

`3jA` Move three lines downwards till the last non-empty character of
that line and then enter insert mode.

`ci{` Delete a function body and enter insert mode.

------------------------------------------------------------------------
:::

Too overwhelming? Remember, it doesn\'t have to be. You don\'t have to
learn all of these keybindings at once. You can just learn basic things
mentioned in [Navigation](#navigation) section to get started. Just open
any plain text file, or a one with source code in it, to get started. It
wont take more than five minutes. If you like it, which I am sure you
will, you can continue using it, otherwise you can just stop. At least
you wont have to regret in future that you never tried it.

I highly recommend starting with vanilla Vim, or Neovim, instead of
pre-configured distributions like [LunarVim](https://www.lunarvim.org),
[LazyVim](https://www.lazyvim.org) as they might be too overwhelming and
confusing.

Written on: 2024-03-12. Last Updated on: 2024-07-28.
