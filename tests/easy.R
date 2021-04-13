library(ggplot2)
library(volesti)

step <-  100
for (walk in c("CDHR", "RDHR", "BaW","BiW","BCDHR","BRDHR")){
  P <- gen_cube(100,'H')
  points <-  sample_points(P,n=1000,random_walk = list("walk" = walk, "walk_length" = step))
  g <- plot(ggplot(data.frame( x=points[1,], y=points[2,] )) +
            geom_point( aes(x=x, y=y, color=walk)) + coord_fixed(xlim = c(-1,1),
            ylim = c(-1,1)) + ggtitle(sprintf("walk length=%s", step, walk)))
}
