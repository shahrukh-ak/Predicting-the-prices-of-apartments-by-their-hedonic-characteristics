#We use R code below to access data and identify its dimension.
library(PASWR)
data(vit2005)
attach(vit2005)
dim(vit2005)
[1] 218  16
names(vit2005)
[1] "row.labels"     "totalprice"     "area"           "zone"          
[5] "category"       "age"            "floor"          "rooms"         
[9] "out"            "conservation"   "toilets"        "garage"        
[13] "elevator"       "streetcategory" "heating"        "tras"      
model=lm(totalprice~area+age+floor+rooms+toilets+garage+elevator+tras)
summary(model)
Call:
  lm(formula = totalprice ~ area + age + floor + rooms + toilets + 
       garage + elevator + tras)

Residuals:
  Min     1Q Median     3Q    Max 
-91482 -20305   -888  15562  99408 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  60337.3    19295.1   3.127  0.00202 ** 
  area          2007.8      169.4  11.855  < 2e-16 ***
  age           -490.2      178.9  -2.741  0.00666 ** 
  floor        -1752.3     1101.3  -1.591  0.11309    
rooms          105.2     4684.5   0.022  0.98210    
toilets      19254.5     6407.9   3.005  0.00298 ** 
  garage       28371.6     5690.5   4.986 1.29e-06 ***
  elevator     20186.2     6974.7   2.894  0.00420 ** 
  tras          9983.8     5933.6   1.683  0.09395 .  
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 33050 on 209 degrees of freedom
Multiple R-squared:  0.7809,	Adjusted R-squared:  0.7725 
F-statistic: 93.12 on 8 and 209 DF,  p-value: < 2.2e-16


#Using R2 as a measure of the quality of fitted model we have a parsimonious model containing the variables area,
#age, toilets,garage and elevator which yields R2 = 0.77