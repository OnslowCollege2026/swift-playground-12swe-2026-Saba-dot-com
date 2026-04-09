@main
struct SwiftPlayground {
    static func main() {

        func showWelcome() {
            print("Welcome to the Koro cafe!")
        }

        showWelcome()


        let menu = [
            ["Coffee", "4"],
            ["Tea", "3"],
            ["Muffin", "6"],
            ["Sandwich", "9"]
        ]

        var order = [String]()


        func addItem(name: String, to order: inout [String]) {

        }

        func calculateTotal(order: [String], menu: [[String]]) -> Int {
            return 0
        }

        func printOrder(order: [String]) {
            print(order)
        }

        func printMenu(menu: [[String]]) {
            print(menu)
        }



    func menuChoice() {

        var running = true

        while running {
            print("=== Koro Cafe ===")
            print("1. Show menu")
            print("2. Add item to order")
            print("3. View order")
            print("4. Checkout")
            print("5. Quit")


            

        }



    }
        
}
}