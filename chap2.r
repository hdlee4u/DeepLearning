# 패키지 설치
# install.packages("prob")
library("prob")

#동전 1회, 3회 던지기
print(tosscoin(1))
print(tosscoin(3))

#주사위 1회 던지기
print(rolldie(1))

## 추출방법에 따른 표본공간

# (1) 순서 고려, 복원추출
print(urnsamples(x=c("a","b","c"), size=2, replace=TRUE, ordered=TRUE))
# (2) 순서 고려, 비복원추출
print(urnsamples(x=c("a","b","c"), size=2, replace=FALSE, ordered=TRUE))
# (3) 순서 비고려, 비복원추출
print(urnsamples(x=c("a","b","c"), size=2, replace=FALSE, ordered=FALSE))

## 경우의 수
# (1) 순서 고려, 복원추출
print(nsamp(n=3, k=2, replace=TRUE, ordered=TRUE))
# (2) 순서 고려, 비복원추출
print(nsamp(n=3, k=2, replace=FALSE, ordered=TRUE))
# (3) 순서 비고려, 비복원추출
print(nsamp(n=3, k=2, replace=FALSE, ordered=FALSE))

## 확률의 연산
# 표본공간
S=rolldie(1, makespace=TRUE)
# 사건 : 부분집합
A=subset(S, X1==c(2,4,6)) 
B=subset(S, X1==c(3,6))

# 확률의 연산
print(Prob(A))
print(Prob(B))
Prob(union(A,B))
print(Prob(intersect(A,B)))


