import UIKit

class Library {
    var books = [Book]()
}

class Book {
    var library : Library?
}

class MemoryExampleViewController: UIViewController {

    @IBAction func leakExample(_ sender: AnyObject) {

        let library = Library()

        for _ in 1..<1000 {
            let book = Book()
            // book.library = library
            library.books.append(book)
        }

    }

}
