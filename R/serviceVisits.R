
# assumes two variables that are global to the code being executed:

#    globalObj: the object that is the subject of the "visits"
#    globalPause, basically an R logical debug/code illustration variable,

# 'expr' is quote R code; with semicolons separating statements, e.g.
# 'ls(); date()'

sCall <- function(expr) 
{
   eval(parse(text=expr,parent.frame()))
   if (globalPause) {}
}
