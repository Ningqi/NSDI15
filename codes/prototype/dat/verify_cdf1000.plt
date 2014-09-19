
reset
set terminal pdfcairo font "Gill Sans,9" linewidth 2 rounded fontscale 1

set logscale y

set style line 80 lt rgb "#808080"
set style line 81 lt 0  # dashed
set style line 81 lt rgb "#808080"
set grid back linestyle 81
set border 3 back linestyle 80

set style line 1 lt rgb "#A00000" lw 1 pt 1 ps 1
set style line 2 lt rgb "#00A000" lw 1 pt 6 ps 1
set style line 3 lt rgb "#5060D0" lw 1 pt 2 ps 1
set style line 4 lt rgb "#F25900" lw 1 pt 9 ps 1

set xtics nomirror
set ytics nomirror
set key bottom right

set ylabel "Cumulative distribution of time (ms)"
set xlabel "Total of 1000 randomly picked flows"
set title "Verification time for AS 4755"
set output "/Users/anduo/Documents/NSDI15/codes/prototype/dat/verify_cdf1000.pdf"

plot "./dat/verify_cdf1000.dat" using 2:1 title "forwarding graph" with lp ls 1,\
 '' using 3:1 title "disjoint path" with lp ls 2,\
 '' using 4:1 title "loop free" with lp ls 3,\
 '' using 5:1 title "black hole" with lp ls 4