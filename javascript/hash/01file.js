data = [null, null, null, null, null, null, null, null];


function hash(str){
    let hashVal = 0 
    for(let index = 0; index < str.length; index++){
        hashVal += str.charCodeAt(index);
    }
    return hashVal
}

console.log(hash("new key"))

function hashMod(key){
    return hash(key) % data.length
}

console.log(hashMod("new key"))