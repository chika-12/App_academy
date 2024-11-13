function numberDiv(num1, num2){
    if (num2 === 0){
        throw new Error("Division by Zero is prohibited");      
    } else{
        return num1 / num2;
    }
}

try{
    console.log(numberDiv(5, 0))
} catch (error){
    console.log("An error occurred: ", error.message)
}
console.log("Print the next line number-------------------" )
try{
    console.log(numberDiv(20, 5))
} catch(error){
    console.log("An error occurred")
}