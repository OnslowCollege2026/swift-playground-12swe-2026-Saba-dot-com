@main
struct SwiftPlayground {
    static func main() {

        /// Allows owner to add kumara
        func addKumara(currentStock: Int, amount: Int) -> Int {
            var kumaraInStock = currentStock + amount
            return kumaraInStock
        }

        func viewCurrentStock(currentStock: Int) -> Int {
            if currentStock <= 0 {
                return currentStock
                print("There are no kumara in Stock")
            } else {
            return currentStock
            }
        }

        func addBag(kumaraWeight: Double) {
            var bagAmount = kumaraWeight / 3
            
        }

        func checkKumaraWeigth(kumaraWeight: Double) -> String {
            if let kumaraWeight >= 0.1 && kumaraWeight <= 50.0 && kumaraWeight <= currentStock {
                return "The weight of your kumara is \(kumaraWeight)"
            } 
        }

        func calculateTotal(total: Double, kumaraWeight: Double) {
            var kumaraCost = kumaraWeight * 3
        }

        func sellKumara() {

        }

        func stallHistory(kumaraWeight: Double, bagAmount: Int) {
            
        }

        func printOwnerMenu() {
            print("Enter the number: ")
            print("1. Add Kumara to stock")
            print("2. View current stock")
            print("3. View previous sales records")
            print("4. Show cummary information")
        }



    func runKumaraStall() {
        print("Welcome to the Kumara Stall")
        print("Enter 1 if you are a customer: ")
        print("Enter 2 if you are the owner: ")

        if let userInput = readLine(), let choice = Int(userInput) {
            if choice <= 2 && choice >= 1 {
                let userChoice = choice
                
                switch choice
                case 1: 
                    printUserMenu()



        func printUserMenu() {
        
            print("Enter the number")
            print("1. ")
            print("3. Print reciept")
            print("")
    
        }
    }
}
}