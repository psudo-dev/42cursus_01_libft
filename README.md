# libft <!-- omit in toc -->

#### Bonus A  <!-- omit in toc -->

libft project for [42 | São Paulo](https://github.com/42sp)

[École 42 | 42 School](https://github.com/42School):

- ***[Level 01](https://github.com/psudo-dev/42cursus_index)***
  - ***01. Libft***

### Table of Contents  <!-- omit in toc -->

- [Project](#project)
- [Mandatory Part](#mandatory-part)
  - [Part 1](#part-1)
  - [Part 2](#part-2)
- [Usage](#usage)
- [libft](#libft)
  - [Directories and Files](#directories-and-files)
- [Tests](#tests)
- [Issues and Suggestions](#issues-and-suggestions)
- [References and Links](#references-and-links)
- [License](#license)

## Project

This project consists in recreating the some basic but very practical functions for working with C language. We are are only allowed to use **`write`**, **`malloc`** and **`free`**.

If **`lib`** stands for library, is **`ft`** = **f**orty **t**wo?

So we are basically creating our own library for future use. I did all the **Mandatory** and **Bonus** parts and then started to add any function that I thought could be useful in the future.

#### malloc() and free() <!-- omit in toc -->

Memory allocation and deallocation functions.

```c
#include <stdlib.h>
```

#### write() <!-- omit in toc -->

Writes `nbyte` from the `buffer` pointed by `buf` to the `file descriptor` `fd`.

```c
#include <unistd.h>

ssize_t write(int fd, const void *buf, size_t nbyte);
```

## Mandatory Part

### Part 1

In this first part, you must re-code a set of the libc functions, as defined in their man. Your functions will need to present the same prototype and behaviors as the orig- inals. Your functions’ names must be prefixed by “ft_”. For instance strlen becomes ft_strlen.

### Part 2

In this second part, you must code a set of functions that are either not included in the libc, or included in a different form. Some of these functions can be useful to write Part 1’s functions.

## Bonus Part  <!-- omit in toc -->

Having functions to manipulate memory and strings is very useful, but you’ll soon discover that having functions to manipulate lists is even more useful.

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
> - **`make clean`** *clean object files*
> - **`make fclean`** *clean object files and `libft.a`*
> - **`make re`** *clean project files and recompiles*
> - **`make exit`** *clean project files and delete test files*

---

## libft

### Directories and Files

> - `Makefile` _**Makefile** for **libft** project_
> - `inc/`
>   - `libft.h` _it's the **header** file for this project_
> - `src/`
>   - `libft.c` _**libft()**_
>   - `printers.c` _printing functions_
>   - `utils.c` _supporting functions for the project_
>   - `structs.c` _all the struct functions to handle data_
>   - `specifiers.c` _functions to handle incoming data check for the specifiers_
>     - `type_char.c` _**char**, **%** and **string**_
>     - `type_int.c` _**int** and **unsigned int**_
>     - `type_char.c` _**lower case hex**, **upper case hex** and **pointer**_
>     - `flags.c` _functions to check **flags**_
>     - `precision.c` _functions to check and handle **precision**_
>     - `width.c` _functions to check and handle **width**_
> - `test/` _directory for the testers_

#### Bonus: 200% Extra Work <!-- omit in toc -->

For the bonus part, we had to implement **`width`**, **`precision`** and a few **`flags`**, which might sound simple but it changes everything.

They say that in case you are going to do the **Bonus part**, you should approach the **Mandatory** part already thinking about the bonus. That would be great if you could build upon what you already did in the mandatory part, which is what we usually expect out of the Bonus Part, but that's not the case.

In the end you basically have to redo the whole project, it would have been best to simply say to those that intend to make the bonus part to jump straight to the bonus or maybe they should have kept the **`width`** and the **`Bonus B`** flags in the **Mandatory** part and the **Bonus** would be the **`Bonus A`**.

The fact that you have to handle a lot of different things interacting with different priorities and print things before, after and in the middle of what you've done in the mandatory part completely changes how you think this through compared to the Mandatory part.

> It makes no sense to call it a bonus when it's basically double the work of the mandatory. A Bonus should be something like 20% extra work, not 200%.

## Tests

It's passing in all 2,385,584 tests of the following testers:

- [Paulo Santana](https://github.dev/paulo-santana/libft_tester)
- [Tripouille](https://github.dev/Tripouille/printfTester)

#### Commands <!-- omit in toc -->
>
> - **`make t`** *clone printf testers to `/test` directory*
> - **`make m`** *run `mandatory` tests*
> - **`make b`** *run `bonus` tests*
> - **`make a`** *run `all` tests*
> - **`make c`** *clean test object files*
> - **`make f`** *clean **`*.c`**, **`*.o`** and **`*,h`** and `libftprintf.a`*
> - **`make d`** *delete `test` files*

## Issues and Suggestions

-   Feel free to contact me or create an issue!
-   For more information, [click here](https://github.com/psudo-dev/42cursus_03_printf/issues/new/choose).

## References and Links

- <https://github.com/42sp>
- <https://github.com/42School>
- <https://github.dev/julioakira/42sp_libft>
- <https://github.dev/paulo-santana/libft_tester>
- <https://github.dev/Tripouille/printfTester>

## License

-   [GNU General Public License v3.0](https://github.com/psudo-dev/42cursus_03_printf/blob/main/LICENSE.md)
