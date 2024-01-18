def solution(a, b):
    #ab 홀수 시 
    if a % 2 != 0  and b % 2 != 0 :
        return (a**2 + b**2)
    #ab 둘중하나 홀수
    elif a % 2 != 0 or b % 2 != 0 :
        return 2 * (a + b)   
    #ab 모두 홀수 X => 짝수
    else :
        return abs(a - b)