load "stylefile.gp"
#set terminal pdfcairo size 20cm,15cm
#set xrange [0:5000]
set xlabel "t (fm/c)"
#set log y
#set format y '10^{%L}'
set key bottom right
#Ns = "2 3 4 5 6 7 8"

#do for [i=1:words(Ns)] {
#filename = "N_".word(Ns, i)."ChannelsOverTime.csv"
#set output "N_".word(Ns, i)."ChannelsOverTime.pdf"
#plot for [k=1:word(Ns, i)] filename using "t":"Norm_".(k-1) w l title #"Channel ".(k-1)
#}

plot for [k=1:5] "N_5ChannelsOverTime.csv" using "t":"Norm_".(k-1) w l title "Channel ".(k-1)
