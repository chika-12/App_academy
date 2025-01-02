function printReverse(min, max){
    let arr = [];
    for(let index = max - 1; index > min; index--){
        arr.push(index)
    }
    return arr
}
console.log(printReverse(2, 10))