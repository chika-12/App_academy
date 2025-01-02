const cache = {} 
function fibMemo(n){
    console.log(`Running fibMemoPrint(${n})`);
    if(n === 1){
        return 0
    }
    if (n === 2){
        return 1
    }
    if(cache[n] === undefined){
        cache[n] = fibMemo(n - 1) + fibMemo(n - 2)
    }
    return cache[n]
}
fibMemo(30)