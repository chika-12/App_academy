function hash(str){
    let hashVal = 0;
    for(let index = 0; index < str.length; index++){
        hashVal += str.charCodeAt(index)
    }
    return hashVal
}
console.log(hash("chika"))

const sha256 = require('js-sha256')
console.log(sha256("chika"))