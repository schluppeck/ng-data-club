#| echo: false

using Luxor

fname = "linear-regression.svg"
w, h = 300,300
padding = 50
Drawing(2w+padding,2h+padding, fname)
origin()

background("white")
A, B = Point(-0.8w, 0.4h), Point(0.6w, 0h)

# point perpendicular to line
C = Point(0w, -0.7h)
D = perpendicular(A, B, C)

sethue("black")
arrow(A, B, arrowheadlength = 20, linewidth=2)
sethue("gray")
arrow(A, C, arrowheadlength = 20, linewidth=2)
sethue("red")
arrow(C, D, arrowheadlength = 20, linewidth=2)

translate(0, 10.0)
sethue("darkred")
arrow(A, D, arrowheadlength = 20, linewidth=2)
translate(0, -10.0)

sethue("purple")
circle.([A, B, C], 4, action = :fill)

fontsize(24)
sethue("grey50")
label.(string.(["x", "y", "e", "y'"]),
     (:n, :n, :e, :s), offset=15,
     (midpoint(A,B), 
      midpoint(A,C), 
      midpoint(D,C),
      midpoint(A,D)))
finish()

