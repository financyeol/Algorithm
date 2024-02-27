def solution(n, k) :
    # n % k의 수 만들기 
    div = n // k  # 예) 10 / 3  
    answer = [x * k for x in range(1, div+1)]
    return answer
