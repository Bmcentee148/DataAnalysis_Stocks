data_set = read.csv("/Users/brian/Desktop/DataAnalysis_Stocks/Merged.csv")

citi_close_prices = data_set$CITI.Close
td_close_prices = data_set$TD.Close
boa_close_prices = data_set$BOA.Close

boxplot(citi_close_prices,td_close_prices,boa_close_prices,
        names=c("CitiGroup","TD Ameritrade","Bank OF America"),
        col=c("green","red","blue"),
        ylab="Closing Price",
        main = "Stock Prices Throughout Year")