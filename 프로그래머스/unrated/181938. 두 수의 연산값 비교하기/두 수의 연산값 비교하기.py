def solution(a, b):
    c = int(f'{a}{b}')
    d = 2*a*b
    if c >= d :
        return(c)
    elif c < d :
        return(d)
    