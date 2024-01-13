

# def solution(start_num, end_num):
#     for i in range(start_num,end_num) :
#      answer = []
#      return answer.append(i)
# 라는 멍청한짓을 하고 있엇다./.

# def solution(start_num, end_num):
#     return [i for i in range(start_num,end_num+1)]
# 리스트 컴프리헨션

def solution(start_num, end_num):
    return list(range(start_num,end_num+1))
