%option noyywrap
%{
#include&lt;stdio.h&gt;
%}
%%
int|char|float {printf(&quot;\n%s-&gt;keyword&quot;,yytext);}
,|; {printf(&quot;\n %s-&gt;separator&quot;,yytext);}
[a-zA-Z0-9]* {printf(&quot;\n %s-&gt;identifier&quot;,yytext);}
%%
int wrap()
{
}
int main()
{
printf(&quot;enter&quot;);
yylex();

return 0;
}
