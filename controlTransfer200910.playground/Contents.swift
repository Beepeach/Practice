

//: # Control Transfer Statement


for num in 1 ... 10 {
    print("Hello")
    
    if num > 3 {
        break
    }
}



for num in 1 ... 10 {
    print("Hi")
    
    if num > 3 {
        continue
        break
    }
}



//: # Break statement


for index in 1 ... 10 {
    print(index)
    
    if index > 5 {
        break
    }
}




//안에 이너루프만 종료시키고 밖에 아우터루프는 빠져나오지 않았다
for i in 1 ... 10 {
    print("Outer Loop \(i)")
    
    for j in 1 ... 10 {
        print(" Inner Loop \(j)")
        
        if j > 2 {
            break
        }
    }
}





//: # Continue Statement

//문장을 종료하는것이 아니고 현재 반복을 종료하고 다음 반복상수로 반복한다
for continueIndex in 1 ... 10 {
    
    if continueIndex % 2 == 0 {
        continue
    }
    
    print(continueIndex)
}


//break와 마찬가지로 밖에 구문에는 영향을 끼치지 못한다/
for i in 1 ... 10 {
    print("Outer Loop \(i)")
    
    for j in 1 ... 10 {
        if j % 2 == 0 {
            continue
        }
        
        print(" Inner Loop \(j)")
    }
}




//: # Labeled Statement

//구문에 이름을 붙여서 원하는 구문을 제어할 수 있다.
outerLoop: for i in 1 ... 10 {
    print("Outer Loop \(i)")
    
    innerLoop: for j in 1 ... 10 {
        if j % 2 == 0 {
            continue outerLoop
        }
        
        print(" Inner Loop \(j)")
    }
}






