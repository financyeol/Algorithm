def solution(n, control):
    
    #wsda 할당된 딕셔너리 만들기
    dict1 = {
        "w" : 1 , 
        "s" : -1 , 
        "d" : 10, 
        "a" : -10
        }
    #반복적적으로 n에 값 넣기
    # 그러므로 n += 에 dict[key] 값으로 values 넣기 
    for i in control :
        n += dict1[i]
    return n