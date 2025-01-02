function multiply(a, b){
    let product = 0
    for(let index = 0; index < b; index++){
        product += a
    }
    return product
}
console.log(multiply(2, 4))
const cache = {}
function multiplyCache(a, b){
    const key = `${a} x ${b}`;
    if (cache[key] === undefined){

        cache[key] = multiply(a, b)
    }
    return cache[key]
} 
console.log(multiply(2, 1000000000));
console.log(multiplyCache(2, 1000000000));