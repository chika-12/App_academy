function logBetweenStepper(min, max, step){
    let arr = [];
    for(let i = min; i <= max; i += step){
        arr.push(i)
    }
    return arr
}

console.log(logBetweenStepper(1, 10, 2))
console.log(logBetweenStepper(5, 9, 1)) // => [5, 6, 7, 8, 9]
console.log(logBetweenStepper(-10, 15, 5))