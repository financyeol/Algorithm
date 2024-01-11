def solution(num_list):
    even = []
    odd = []

    for number in num_list:
        if number % 2 == 0:
            even.append(number)
            even_str = int(''.join(map(str, even)))

        else:
            odd.append(number)
            odd_str = int(''.join(map(str, odd)))


    result = even_str + odd_str 
    return result