
/*
 
 10번 반복출력하기
 */



print("hello")
print("hello")
print("hello")
print("hello")
print("hello")
print("hello")
print("hello")
print("hello")
print("hello")
print("hello")


for _ in 1 ... 10 {
    print("hello")
}

for num in 1 ... 5 {
    print(num)
    type(of: num)
}


//2를 10번 곱하기
let power = 10
var result = 1

for _ in 1 ... power {
    result *= 2
}

print(result)




// 0 ~ 10 까지 2 만큼 건너뛰며 = 짝수 출력
for num in stride(from: 0, to: 11, by: 2) {
    print(num)
}




// for를 이용하여 Collection 열거

let list = ["a", "b", "c"]

for alphabet in list {
    print(alphabet)
}





//중첩을 통해 구구단 구현

for i in 2 ... 9 {
    for j in 1 ... 9 {
        print("\(i) * \(j) = \(i * j)")
    }
    
}




//while 반복문

//1 ~ 100 숫자의 합

var num = 1
var sum = 0

while num <= 100 {
    sum += num
    num += 1
}
print(sum)




//repeat-while 구문
//while과의 차이점

var repeatNum = 0

repeat {
    repeatNum += 1
} while repeatNum < 1

print(repeatNum)






var whileNum = 0

while whileNum < 1 {
    whileNum += 1
}

print(whileNum)












