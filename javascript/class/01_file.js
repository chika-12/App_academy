class Book{
    constructor(title, series, author){
        this.title = title;
        this.series = series;
        this.author = author
        Book.number += 1
    }
    static number = 0
    getInfo(){
        return `${this.title} is a great book written by ${this.author} it belongs to the ${this.series} series`
    }
    static getTitles(...books){
        let arr = []
        for(let index = 0; index < books.length; index++){
            arr.push(books[index].title)
        }
        return arr.join(" ")
    }
}
const firstBook = new Book('Things fall apart', 'Lost', 'Chinua Achebe');
//console.log(firstBook)
//console.log(firstBook.getInfo());
//console.log(firstBook instanceof Book)
//console.log(firstBook.author)
const secondBook = new Book("Chike and the river", "trials", "Mark");
const thirdBook = new Book("Trial of brother jero", "Anthill", "Wole Soyinka")
//const titles = Book.getTitles(firstBook, secondBook)
//console.log(titles)
console.log(Book.number)