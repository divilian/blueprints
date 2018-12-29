
the.func <- function(x) {
    (-20000*x + x^3)/10000000000
}

draw.segs <- function(x) {
    draw.vert.seg(x)
    draw.horiz.seg(x)
}

draw.vert.seg <- function(x) {
    segments(x0=x,x1=x,y0=0,y1=the.func(x),lty="dotted")
}

draw.horiz.seg <- function(x) {
    segments(x0=0,x1=x,y0=the.func(x),y1=the.func(x),lty="dotted")
}

options(scipen=9)
png("complexityCurve.png",height=480,width=680)
curve(the.func,from=0,to=10*1000,
    xlab="Size of software (lines of code?)",
    ylab="Weeks (?) to finish program",
    main="Complexity vs. programming time",
    col="blue", lwd=2)
draw.segs(4000)
draw.segs(8000)
text(0,the.func(4000),'"a couple months"',adj=c(-.15,-.3))
text(0,the.func(8000),'"about a year"',adj=c(-.15,-.3))
dev.off()
