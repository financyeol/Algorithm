def solution(num_list):
    #마지막원소 [-1]과 [-2] 차이 
    #-2가 크면 [-1]*2 해서 append
    #-1이 크면 [-1] - [-2] 해서 append
    if num_list[-2] >= num_list[-1] :
        num_list.append(num_list[-1]*2)
        return(num_list)
    elif num_list[-2] < num_list[-1] :
        num_list.append((num_list[-1] - num_list[-2]))
        return(num_list)
    
# 문제점 : append 메소드를 사용한 인자를 그대로 리턴함. 어펜드 메소드 값자체는 None이다. 결론은 처음 리스트를 리턴이므로 리턴값에 본 리스트를, 조건만족시 행동으로 어펜드르 하면된다.

# def solution(num_list):
#     #마지막원소 [-1]과 [-2] 차이 
#     #-2가 크면 [-1]*2 해서 append
#     #-1이 크면 [-1] - [-2] 해서 append
#     if num_list[-2] >= num_list[-1] :
#         answer = num_list.append(num_list[-1]*2)
#         return(answer)
#     elif num_list[-2] < num_list[-1] :
#         answer = num_list.append((num_list[-1] - num_list[-2]))
#         return(answer)
#     else : 
#         return("다시 시도해 주세요")
