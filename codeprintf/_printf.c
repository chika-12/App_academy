#include "main.h"
/**
 * print_char - returns the output of format
 * @ch: parameter
 * Return: 0
 */
static int print_char(char ch)
{
	putchar(ch);
	return (1);
}

/**
 * print_string - returns a string
 * @str: parameter
 * Return: 0
 */
static int print_string(const char *str)
{
	int count;

	count = 0;

	while (*str != '\0')
	{
		putchar(*str);
		str++;
		count++;
	}
	return (count);
}

/**
 * handle_format_specifier - handles format specifiers
 * @format: holds specification
 * @args: number of argument
 * Return: 0
 */
static int handle_format_specifier(const char *format, va_list args)
{
	int count;

	count = 0;

	switch (*format)
	{
		case 'c':
			count += print_char(va_arg(args, int));
			break;
		case 's':
			count += print_string(va_arg(args, const char *));
			break;
		case '%':
			count += print_char('%');
			break;
		default:
			count += print_char('%');
			count += print_char(*format);
			break;
	}
	return (count);
}

/**
 * _printf - printf the format specifiers
 * @format: parameter
 * Return: 0
 */
int _printf(const char *format, ...)
{
	int count;
	va_list args;

	count = 0;

	va_start(args, format);
	while (*format != '\0')
	{
		if (*format == '%')
		{
			format++;
			count += handle_format_specifier(format, args);
		}
		else
		{
			count += print_char(*format);
		}
		format++;
	}
	va_end(args);
	return (count);
}
