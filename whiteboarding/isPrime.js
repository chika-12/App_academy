function isPrime(num){
    for(let index = 2; index < num; index++){
        if(num % index === 0){
            return false
        }
    }
    return true
}
console.log(isPrime(2));  // => true
console.log(isPrime(10));  // => false
console.log(isPrime(11));  // => true
console.log(isPrime(9));  // => false
console.log(isPrime(2017));  // => true
