set term png size 2048, 2048
set output "/tmp/a.png"
set samples 500

set polar

unset xtics
unset ytics
unset x2tics
unset y2tics
unset grid
unset tics
unset rtics
unset zeroaxis
unset raxis
unset border
unset key

set style line 5 lt rgb "#ADD8E6" lw 3

plot exp(sin(t)) - 2*cos(4*t) + (sin(1/24*(2*t-pi)))**5 ls 5

print "/tmp/a.png written"
