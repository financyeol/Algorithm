# def solution(num_list):
#     for i in range(len(num_list)) :
#         if num_list[i] < 0 :
#             return num_list.index(num_list[i])
#         else : 
#             return (-1)
        
        
        #index()는 리스트 내에서 해당 값의 위치를 반환
        
# def solution(num_list):
#     for i in num_list :
#         if i < 0 :
#             return num_list.index(i)
#         else : 
#             return (-1)
        
        
        #index()는 리스트 내에서 해당 값의 위치를 반환
        
def solution(num_list):
    for index, num in enumerate(num_list):
        if num < 0:
            return index
    else:
        return -1