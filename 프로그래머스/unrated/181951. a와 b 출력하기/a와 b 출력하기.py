while True :
    list1 = list(map(int, input().strip().split(' ')))
    if -100000 <= list1[0] <= 100000 and -100000 <= list1[1] <= 100000:
        print('a =',list1[0]) 
        print('b =',list1[1])
        break
    else :
        continue
