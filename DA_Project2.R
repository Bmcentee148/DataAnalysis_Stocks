data_set = read.csv("/Users/brian/Desktop/DataAnalysis_Stocks/Merged.csv");

citi_close_prices = data_set$CITI.Close;
td_close_prices = data_set$TD.Close;
boa_close_prices = data_set$BOA.Close;

boxplot(citi_close_prices,td_close_prices,boa_close_prices,
        names=c("CitiGroup","TD Ameritrade","Bank OF America"),
        col=c("green","red","blue"),
        ylab="Closing Price",
        main = "Stock Prices Throughout Year");

citi_p_changes = c()
td_p_changes = c()
boa_p_changes = c()

for (i in 2:length(citi_close_prices)) {
  citi_p_changes[i -1] <- ((citi_close_prices[i] - citi_close_prices[i-1]) / citi_close_prices[i-1])
}

for (i in 2:length(td_close_prices)) {
  td_p_changes[i -1] <- ((td_close_prices[i] - td_close_prices[i-1]) / td_close_prices[i-1])
}

for (i in 2:length(boa_close_prices)) {
  boa_p_changes[i -1] <- ((boa_close_prices[i] - boa_close_prices[i-1]) / boa_close_prices[i-1])
}

print(t.test(citi_p_changes,mu = 0))
print(t.test(td_p_changes,mu = 0))
print(t.test(boa_p_changes,mu = 0))