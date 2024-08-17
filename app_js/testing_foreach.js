names = [12, 34, 87, 9, 1, 5, 4]
sum = 0
names.forEach(function (value){
    //sum = 0;
    sum += value
})
console.log(sum)
let getALife = function(age){
    if (age > 10){
        console.log("student")
    }else if (age < 10){
        console.log("Pupil")
    }else{
        console.log(10)
    }
}
age = [1,3,4,5,6,9,10,10,11,23,45,23,77,65]
phrases = age.map(getALife)