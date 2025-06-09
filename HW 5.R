install.packages("wooldridge")
install.packages("lmtest") # optional, for diagnostics

library(wooldridge)
data("hprice1")

model = lm(price ~ sqrft + bdrms, data = hprice1)
summary(model)

install.packages("wooldridge")      # if not already installed
library(wooldridge)
data("ceosal2")
model1 = lm(log(salary) ~ log(sales) + log(mktval) + profits + ceoten, data = ceosal2)
summary(model1)
summary(ceosal2$profits)
cor(log(ceosal2$mktval), ceosal2$profits)
