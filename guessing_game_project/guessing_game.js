import colors from "colors"
import chalk from "chalk"
import readline from "readline"
const askGuess = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})
let secretNumber = 0;
let number_of_attempt = 0
let streak = 0
function askLimit(){
    askGuess.question("Choose limit: ", attempt=>{
        number_of_attempt = attempt
        streak = attempt
        console.log(chalk.green(`Your limit is ${number_of_attempt}`))
        askRange()
    })
}

function askRange(){
    askGuess.question("Enter a min range: ", first_answer=>{
        askGuess.question("Enter max range: ", second_answer=>{
            //number_of_attempt = Number(attempt)
            secretNumber = randomRange(Number(first_answer), Number(second_answer))
            console.log(chalk.red(`I think of a number between ${first_answer} and ${second_answer}`))
            prompt()           
        })
    })
}
let key = false
function randomRange(min, max){
    return Math.floor(Math.random() * (max - min) + min)
}

function prompt(){
    askGuess.question("Enter a guess: ", answer=>{
        key = checkGuess(Number(answer))
        if (!key){
            number_of_attempt -= 1
            prompt()
        }else{
            askGuess.close()
        }
        if(number_of_attempt == 0){
            askGuess.close()
            console.log(chalk.red("You loose!"))
        }
    })

}

function checkGuess(number){
    if (number > secretNumber){
        console.log(chalk.bold.red("Too High"))
        return false
    }
    else if(number < secretNumber){
        console.log(chalk.bold.magenta("Too Low"))
        return false
    }
    else if (number == secretNumber){
        console.log(chalk.bold.green.underline("Correct: You win"))
        if(number_of_attempt == streak){
            console.log(chalk.bold.green("Powerful striker: You got it at a hit"))
        }else if (number_of_attempt == streak - 3){
            console.log(chalk.magenta("Streak"))
        }
        return true
    }
}
askLimit()