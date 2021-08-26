set polar
set style line 5 lt rgb "#ADD8E6" lw 3
plot exp(sin(t)) - 2*cos(4*t) + (sin(1/24*(2*t-pi)))**5 ls 5
pause -1
