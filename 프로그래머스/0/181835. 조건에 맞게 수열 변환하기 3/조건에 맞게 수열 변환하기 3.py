def solution(arr, k):
    if k % 2 == 0 :
        plus_list = [x + k for x in arr]
        return plus_list
    else :
        multiple_list = [x * k for x in arr]
        return multiple_list 