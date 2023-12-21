def solution(n):
    list1 = []
    if n % 2 == 0 :
        for i in range(0,n+1,2) :
            list1.append(i ** 2)
        return(sum(list1))
    else :
        for i in range(1,n+1,2):
            list1.append(i)
        return(sum(list1))