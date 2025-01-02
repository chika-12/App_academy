function logBetween(lowNum, highNum){
    if (lowNum > highNum){
        return []
    }else{
        return [lowNum, ...logBetween(lowNum + 1, highNum)]
    }
}
console.log(logBetween(-1, 6))
