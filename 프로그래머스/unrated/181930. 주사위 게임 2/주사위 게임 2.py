def solution(a, b, c):
    #숫자가 같은 경우
    if a == b and b == c :
        return(a + b + c) * (a**2 + b**2 + c**2 ) * (a**3 + b**3 + c**3 )
    elif a == b or b == c or a == c :
        return((a + b + c) * (a**2 + b**2 + c**2 ))
    elif a != b and b != c :
        return((a + b + c))
    else :
        return("잘못된 값입니다. 다시 입력해주세요")