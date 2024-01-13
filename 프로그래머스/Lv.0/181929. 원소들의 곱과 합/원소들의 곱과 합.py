from functools import reduce



def solution(num_list):
    if reduce(lambda x,y : x*y, num_list) >= sum(num_list)**2  :
        return 0
    else : 
        return 1
    