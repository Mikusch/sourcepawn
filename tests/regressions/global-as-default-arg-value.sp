#include <shell>

public int g_Value = 42;
static int s_Value = 7;

void PrintGlobalDefault(int x = g_Value)
{
    printnum(x);
}

void PrintStaticDefault(int x = s_Value)
{
    printnum(x);
}

void PrintMixed(int a = g_Value, int b = 10)
{
    printnum(a);
    printnum(b);
}

public main()
{
    PrintGlobalDefault();
    PrintGlobalDefault(99);
    PrintStaticDefault();

    g_Value = 100;
    PrintGlobalDefault();

    PrintMixed();
    PrintMixed(_, 20);
}
