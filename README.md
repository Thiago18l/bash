# Bash scripts concepts


## Special Parameters


The Special parameters are:
<b>*@#0$?_!-</b>

1. **$*** expand to the value of all positional parameters combined
2. **$@** same as the above
3. **$#** expands to the number of positional parameters.
4. **$0** contains the path to the currently running script or to the shell itself if no script is being executed.
5. **$$** contains the process identification number (PID) of the current process.
6. **$_** is set to the last argument to that command.
7. **$?** is set to the exit code of the last-executed command.
8. **$!** contains the PID of the last command executed in the background
9. **$-** is set to the option flags currently in effect


## Variables

A variable is a parameter denoted by a name; a name is a word containing only letters, numbers, or
underscores and beginning with a letter or an underscore.

```bash
name=VALUE
```

**NOTE**: Bash is very particular about spacing: note that there are no spaces before the = and none after. If
you have spaces, the command would not work.

## Formatting and Printing data

`printf` is derived from the C programming language function of the same name;

```sh
printf FORMAT ARG ...
```
### Escape Sequences

Escape sequences are single letters preceded by a backslash:

- `\a::Alert`
- `\b::Backspace`
- `\e::Escape character`
- `\f::Form feed`
- `\n::Newline`
- `\r::Carriage return`
- `\t::Horizontal tab`
- `\v::Vertical tab`
- `\\::backslash`
- `\nnn::A character specified by one to three octal digits`
- `\xHH::A character specified by one or two hexadecimal digits`

The backslashes must be protected from the shell by quotes or another backslash:
```bash
printf "Q\t\141\n\x42\n"
```

### Format specifiers

The format specifiers are letters preceded by a percent sign. Optional modifiers may be placed between the
two characters. The specifiers are replaced by thecorresponding argument. When there are more arguments
than specifiers, the format string is reused until all the arguments have been consumed. The most
commonly used specifiers are %s, %d, %f, and %x.

The `%s` specifier prints the literal characters in the argument:
```bash
$ printf "%s\n" Print arguments on "separate lines"
```

`%b` is like %s except that escape sequences in the arguments are translated:

```bash
$ printf "%b\n" "Hello\nworld" "12\tword"
```

Integers are printed with %d. The integer may be specified as a decimal, octal (using a leading 0), or
hexadecimal (preceding the hex number with 0x) number. If the number is not a valid integer, printf prints
an error message:

```bash
$ printf "%d\n" 23 45 56.78 0xff 011
```
