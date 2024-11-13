/**function countToZero(num){
    if (num > 0 && !Number.isInteger(num)){
        console.log(num);
        let nextNum = num - num % 1;
        countToZero(nextNum);
    }
    if(num < 0 && !Number.isInteger(num)){
        console.log(num);
        let nextNum = num + -(num % 1);
        countToZero(nextNum);
    }
    if(num > 0 && Number.isInteger(num)){
        console.log(num);
        let nextNum = num - 1
        countToZero(nextNum)
    }
    if(num < 0 && Number.isInteger(num)){
        console.log(num);
        let nextNum = num + 1
        countToZero(nextNum);
    }
    if(num === 0){
        console.log(0)
    }
}
countToZero(8.6)**/
function countToZero(number){
    console.log(number);

    if(number === 0){
        return
    }
    decrement = number %  1;
    if(decrement === 0){
        decrement = number / Math.abs(number)
    }
    countToZero(number - decrement)
}

countToZero(9)