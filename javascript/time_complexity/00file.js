let addNum = function(n){
    let sum = 0;
    for(let num = 0; num < n; num += 1){
        sum += num;
    }
    return sum;
}

let increment = 1000000;
for(let val = increment; val < increment * 10; val += increment){
    startTime = Date.now();
    console.log(addNum(val));
    endTime = Date.now();
    console.log(`${endTime - startTime}`)
} 