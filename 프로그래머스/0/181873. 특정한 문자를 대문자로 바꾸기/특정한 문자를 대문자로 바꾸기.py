def solution(my_string, alp):
    #1. if문으로 포함여부 확인
    #포함 되었을때
    if alp in my_string  :
        #이후 alp값을 어퍼케이스 이후 replace사용 바꿔넣고 리턴
        return my_string.replace(alp, alp.upper())
    
    #contains? 
    
    #2. 그냥 마스트링 리턴
    else : 
        return my_string
    
    
    #* 포함여부 contain은 리스트 
    # in은 넣을 값 in 원래 값 이다
    # uppercase 아니고 .upper()다.
    # 자바 toUpperCase랑 헷갈림.. 하..
    
    