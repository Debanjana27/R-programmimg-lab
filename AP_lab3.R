m=matrix(sample(1:100,60),nrow=6,ncol=10)
print(m)

for(i in 1:10){
  for(j in 1:6){
    Z=m[j,i]
    t=0
    for(k in 1:10){
      for(l in 1:6){
        if(m[l,k]==Z){
          t=t+1
        }
      }
    }
    if(t>=3){
      m[j,i]=99
    }
  }
}
m


for(i in 1:6){
  for(j in 1:10){
    if(m[i,j]>50){
      print(m[i,j])
    }
  }
}


for(i in 1:6){
  for(j in 1:10){
    if(m[i,j]%%2!=0){
      m[i,j]=2*m[i,j]
      print(m[i,j])
    }
  }
}

a=as.integer(readline(prompt="Enter the number"))
s=0
while(a>0){
  r=a%%10
  s=s*10+r
  a=as.integer(a/10)
}
print(paste("reverse of a number=",s))


a=as.integer(readline(prompt="Enter the number"))
s=0
p=a
while(a>0){
  r=a%%10
  s=s*10+r
  a=as.integer(a/10)
}
if(p==s){
  print(paste("the number is palindrome"))
}else{
  print(paste("The number is not palindrome"))
}