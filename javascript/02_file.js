function add(...num){
    sum = 0
    for (let i = 0; i < num.length; i++){
        sum += num[i]
    }
    return sum
}
console.log(add(1,2,34,5,6,8,2))
let num = [1,2,3] 
console.log([...num, 4, 5, 6, 7])
//destructuring
let arr_num = [3, 89]
let num1, num2;
[num1, num2] = arr_num
console.log(num1)
console.log(num2) 