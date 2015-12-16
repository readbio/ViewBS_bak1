pdf("test.pdf", width = 4, height = 5);
library(gplots)

tab<-read.table(text = "id      col0    col2    col12   ox_0
AT3G08860       2.96695 3.35869 0.681622        6.05027
AT2G45210       5.47532 4.90563 3.21645 2.50297
AT1G66470       0.855648        0.94261 0.957396        0.195373
AT2G21640       4.94241 10.6616 7.37062 41.4935
AT1G09575       3.91699 5.87169 1.56778 132.144
AT3G12110       32.2847 28.1174 12.5237 14.8277
AT1G71420       0.445709        0.510797        0.828782        0.920333
AT2G17650       4.07563 4.4734  2.72986 1.71297
AT5G50760       31.3645 16.071  6.71049 12.5674
AT1G71740       5.68991 6.29218 6.71181 2.19726
AT5G44480       5.27562 4.88947 6.58238 2.39219
AT4G12080       8.18186 7.66136 10.2071 4.03695
AT5G43150       116.052 167.681 269.187 31.1775
", header =T, row.names=1)

distCor <- function(x) as.dist(1-cor(t(x)))
heatmap.2(as.matrix(log2(tab + 0.00001)),scale="row",
          col=greenred(256),trace="none",
          hclustfun = function(x) hclust(x,method = 'average'),
          distfun=distCor,cexRow = 0.7, margins=c(8,0), srtCol=45,
          density.info="none",dendrogram = c("row"), Colv=F,cexCol=1)
dev.off()
