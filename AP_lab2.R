xVec <- sample(0:999,100)
yVec <- sample(0:999,100)

a=0
for( n in 1:100)
{
  a=a+sin(yVec[n])/cos(xVec[n])
}
print(a)

for( s in yVec)
{
  if(s>600)
  {
    print(s)
  }
}


for( p in 1:100)
{
  if(yVec[p]>600)
  {
    print(p)
  }
}


for( n in 1:100)
{
  if(xVec[n]==yVec[n])
  {
    print(n)
  }
}

for(n in seq(1,10,2)){
  cat(sprintf("%i",n))
}

