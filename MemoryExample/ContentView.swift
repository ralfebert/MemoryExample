import SwiftUI

class Library {
    var books = [Book]()
}

class Book {
    var library: Library?
}

struct ContentView: View {
    var body: some View {
        Button(
            action: {
                let library = Library()

                for _ in 1 ..< 1000 {
                    let book = Book()
                    // book.library = library
                    library.books.append(book)
                }

            },
            label: {
                Image(systemName: "drop.circle.fill")
                    .foregroundColor(.red)
                    .font(.system(size: 100))
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
