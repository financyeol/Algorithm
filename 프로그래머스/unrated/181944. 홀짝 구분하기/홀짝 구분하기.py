a = int(input())

#자연수 받기
#1과 1000사이 인지 확인하기
#짝수면 is even
#홀수면 is odd


if 1 <= a <= 1000:
    if a % 2 == 0 :
        print(f'{a} is even')
    elif a % 2 != 0 :
        print(f'{a} is odd')
    else:
        print('오류입니다.')

