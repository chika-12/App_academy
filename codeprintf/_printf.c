#include "main.h"
/**
 * _printf - returns the output of format
 * @format: parameter
 * Return: 0
 */
int _printf(const char *format, ...)
{
	va_list args;
	va_start(args, format);

	int count = 0; 
	char ch;
	const char *str;
	
	while ((ch = *format) != '\0')
	{
		if (ch == %)
		{
			format++;
			switch (*format) 
			{
				case 'c':
					putchar(va_arg(args, int));
					count++;
					break;
				case 's':
					{
						str = va_arg(args, const char *);
						while (str != '\0')
							{
								putchar(*str);
								str++;
								count++;
							}
						break;
					}
				case '%':
					putchar('%');
					putchar(*format);
					count +=2;
					break;
			}
			else
			{
				putchar(ch);
				count++;
			}
		}
	}
	va_end(args);
	return (count);
}


