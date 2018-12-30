
library(igraph)

graphs <- lapply(3:8,make_full_graph)

par(ps=12, cex=1, cex.main=2)
for (i in 1:length(graphs)) {
    png(paste0("dependencies",gorder(graphs[[i]]),".png"))
    V(graphs[[i]])$name <- ""
    plot(graphs[[i]],
        vertex.size=10, vertex.color="green", edge.color="black", edge.width=2)
    title(paste0("",gorder(graphs[[i]])," code chunks\n",
                 "Up to ",gsize(graphs[[i]])," dependencies"),
          cex.main=2.3)
    dev.off()
}

