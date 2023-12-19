def solution(str1, str2):
    ans = ""
    for i in range(min(len(str1),len(str2))) :
        ans = ans + str1[i] + str2[i]
    return ans

# 스트링 두개 받기 / a = input1 / b= input2
# 