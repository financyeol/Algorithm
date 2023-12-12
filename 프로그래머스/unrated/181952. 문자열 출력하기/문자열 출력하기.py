str = input()
while True:
    if 1 <= len(str) <= 10000000 and str != ' ':
        print(str)
        break
    else:
        continue
