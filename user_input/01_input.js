const readline = require("readline")

const user = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

user.question("Enter your name: ", answer =>{
    console.log("Answer: " + answer)

    user.question("Enter your age: ", second_answer=>{
        console.log("Age: "+ second_answer)

        user.close()
    })
})