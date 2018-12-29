
library(igraph)

set.seed(1234)
NUM.MINIS <- 7
module.sizes <- sample(c(4,5,3:7),NUM.MINIS,replace=TRUE)

make.mini.graphs <- lapply(1:length(module.sizes), function(n) {
    g <- make_full_graph(module.sizes[n])
    V(g)$name <- paste0(LETTERS[n],1:module.sizes[n])
    return(g)
})

low <- graph.union(make.mini.graphs)
low <- add_edges(low,c(
    "A1","B1",
    "B1","C1",
    "B1","D1",
    "C1","A1",
    "D1","F1",
    "E1","A1",
    "E1","D1",
    "E1","F1",
    "F1","B1",
    "F1","G1"
))

V(low)$name <- ""
png("lowDependencies.png")
plot(low, layout=layout_with_fr(low),
    vertex.size=10,
    vertex.color="green", edge.color="black", edge.width=2)
dev.off()

high <- erdos.renyi.game(sum(module.sizes),p=.4)
V(high)$name <- ""
png("highDependencies.png")
plot(high, layout=layout_with_fr(high),
    vertex.size=10,
    vertex.color="green", edge.color="black", edge.width=2)
dev.off()
