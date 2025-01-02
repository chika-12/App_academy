let memo = {};
function factorial(n){
    if (n in memo){
        return memo[n]
    }
    if (n === 1){
        return 1
    }
    let start = Date.now()
    memo[n] = n * factorial(n - 1)
    let stop = Date.now()
    console.log(`${stop - start}`)
    return memo[n]
}
console.log(factorial(1000))
console.log(memo)