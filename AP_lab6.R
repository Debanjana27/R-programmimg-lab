#question3
Year <-
  c(2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2017,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016,2016)
Month <- c(12, 11,10,9,8,7,6,5,4,3,2,1,12,11,10,9,8,7,6,5,4,3,2,1)
Interest_Rate <-
  c(2.75,2.5,2.5,2.5,2.5,2.5,2.5,2.25,2.25,2.25,2,2,2,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,1.75,
    1.75)
Unemployment_Rate <-
  c(5.3,5.3,5.3,5.3,5.4,5.6,5.5,5.5,5.5,5.6,5.7,5.9,6,5.9,5.8,6.1,6.2,6.1,6.1,6.1,5.9,6.2,6.2,6.1)
Stock_Index_Price <-
  c(1464,1394,1357,1293,1256,1254,1234,1195,1159,1167,1130,1075,1047,965,943,958,971,949,884,866,876,822,704,719)


#question2
x=0;
input=c(0,0,1,1,1,2,2,3,3,4)
if(length(input)>0)
{
  min=input[1];
  x=1
  for(i in input)
  {
    if(i>min)
    {
      min=i;
      x=x+1;
    }
  }  
}


#question1
word1 = readline(prompt = "Enter word 1: ")
word2 = readline(prompt = "Enter word 2: ")
word3 = readline(prompt = "Enter word 3: ")
x = c(word1, word2, word3)
lcPrefix <- function (x, ignore.case = FALSE) 
{
  x <- as.character(x)
  nc <- nchar(x, type = "char")
  for (i in 1:min(nc)) {
    ss <- substr(x, 1, i)
    if (any(ss != ss[1])) {
      return(substr(x[1], 1, i - 1))
    }
  }
  substr(x[1], 1, i)
}
lcPrefix(x)
    
