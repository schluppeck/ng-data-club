# julia script
#
# schluppeck, 2022-12-12

using CSV
using Dates
using DataFrames
using Plots
using FindPeaks1D

gr()

df = DataFrame(CSV.File("2017-mysteryTimeseries.csv"))
rows = size(df)[1]
insertcols!(df, 1, :rownum => 1:rows)

the_plot = plot(df.theTime_day, df.n;
         lw = 2, 
         xlims = Date.(("2016-09-01", "2016-12-31")),
         legend = false
)

ylabel!("# of moodle interactions")
xlabel!("day")


p = findpeaks1d(df.n, height = 100)

plot(the_plot)
scatter!(df[p[1],:theTime_day], p[2]["peak_heights"]) #, color=:red, ms=12)