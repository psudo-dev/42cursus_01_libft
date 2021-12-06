# libft <!-- omit in toc -->

#### 42 Cursus  <!-- omit in toc -->

libft project for [42 | São Paulo](https://github.com/42sp) / [École 42](https://github.com/42School)

- ***[Level 01](https://github.com/psudo-dev/42cursus_index)***
  - ***01. Libft***

### Table of Contents  <!-- omit in toc -->

- [Project](#project)
- [Mandatory Part](#mandatory-part)
  - [Part 1](#part-1)
  - [Part 2](#part-2)
- [Bonus Part](#bonus-part)
- [Usage](#usage)
- [libft](#libft)
  - [Directories and Files](#directories-and-files)
- [Tests](#tests)
- [Issues and Suggestions](#issues-and-suggestions)
- [References and Links](#references-and-links)
- [License](#license)

## Project

This project consists in recreating the some basic but very useful functions for working with C language. We are are only allowed to use **`write`**, **`malloc`** and **`free`** and only in some cases.

> If **`lib`** stands for library, is **`ft`** = forty two?

So we are basically creating our own library for future use. I did all the **Mandatory** and **Bonus** parts and then started to add every general purpose function that I thought could be handy.

#### _malloc( )_ and _free( )_ <!-- omit in toc -->

Memory allocation and deallocation functions.

```c
#include <stdlib.h>
```

#### _write( )_ <!-- omit in toc -->

Writes `nbyte` from the `buffer` pointed by `buf` to the `file descriptor` `fd`.

```c
#include <unistd.h>

ssize_t write(int fd, const void *buf, size_t nbyte);
```

## Mandatory Part

### Part 1

In this first part, you must re-code a set of the libc functions, as defined in their `man`. Your functions will need to present the same prototype and behaviors as the originals. Your functions’ names must be prefixed by “ft_”.
>For instance `strlen` becomes `ft_strlen`.

### Part 2

In this second part, you must code a set of functions that are either not included in the `libc`, or included in a different form. Some of these functions can be useful to write Part 1’s functions.

## Bonus Part

Having functions to manipulate memory and strings is very useful, but you’ll soon discover that having functions to manipulate lists is even more useful

---

## Makefile <!-- omit in toc -->

This was the first time we had to use a `Makefile`. It’s a very powerful tool that allows you to create a build system for your project. Not only it allows you to manage your build process, it also helps you manage your dependencies - like your function files and header.

My `Makefile` has been updated based on things I've learned in other projects. Now it has color support for messages that are printed in the terminal, they indicate what are the processes that are being executed, a "✔" check mark after each task is completed and some more.

---

## Usage

#### Clone the repository <!-- omit in toc -->

```sh
git clone https://github.com/psudo-dev/42cursus_01_libft.git <DIR_NAME>
```

#### Commands <!-- omit in toc -->
>
> - **`make`** *compiles `libft.a` library*
> - **`make clean`** *cleans object files*
> - **`make fclean`** *cleans object files and `libft.a`*
> - **`make re`** *cleans project files and recompiles*
> - **`make exit`** *cleans project files and delete test files*
> - **`make norm <DIR>`** *runs norminette*
>   - *<span style="font-size:0.8em; color:rgba(0, 0, 0, 0.75)">(default = root directory)</span>*

---

## libft

I think that the most interesting part was the **bonus**, learning about **`struct`** and **`linked list`** was very useful. I used either or both in all my projects and understanding linked list also helped me understand better **`pointers`** and **`memory allocation`**.

### Directories and Files

> - `Makefile` _Makefile for libft project_
> - `inc/`
>   - `libft.h` _it's the header file_
> - `src/`
>   - _source `*.c` files_

## Tests

At the time it was passing in all 3 tests, but I've made some changes afterwards so it might not be passing in everything now.

- [Libft Unit Test](https://github.com/alelievr/libft-unit-test.git)
- [Tripouille](https://github.com/Tripouille/libftTester)
- *[Libftest](https://github.com/jtoty/Libftest)

_<span style="font-size:0.8em; color:rgba(0, 0, 0, 0.75)">* I didn't implement a command to run the [Libftest](https://github.com/jtoty/Libftest) because it asks for the project folder, to make it work I would have to make a command to change the config file and some other adaptations so... I didn't... hahahaha... It's due to lazyness, I wanted to do it, but priorities... </span>_

#### Commands <!-- omit in toc -->
>
> - **`make t`** *clones libft to `/test` directory*
> - **`make m`** *runs `mandatory` tests*
> - **`make b`** *runs `bonus` tests*
> - **`make a`** *runs `all` tests*
> - **`make c`** *cleans test object files*
> - **`make f`** *cleans **`*.c`**, **`*.o`** and **`*.h`** and `libft.a`*
> - **`make r`** *rebuilds `test` files*
> - **`make d`** *deletes `test` files*

## Issues and Suggestions

-   Feel free to contact me or create an [issue](https://github.com/psudo-dev/42cursus_01_libft/issues/new/choose)!

## References and Links

- <https://github.com/42sp>
- <https://github.com/42School>
- <https://github.com/alelievr/libft-unit-test.git>
- <https://github.com/Tripouille/libftTester>
- <https://github.com/jtoty/Libftest>

## License

-   [GNU General Public License v3.0](https://github.com/psudo-dev/42cursus_01_libft/blob/main/LICENSE.md)
