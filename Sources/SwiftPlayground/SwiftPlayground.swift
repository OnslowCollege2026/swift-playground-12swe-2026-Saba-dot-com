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
            guard let kumaraWeight <= 0.1 && kumaraWeight >= 50.0 {
                return "The weight of your kumara is \(kumaraWeight)"
            } 
        }

        func calculateTotal(total: Double, kumaraWeight: Double) {
            var kumaraCost = kumaraWeight 
        }
}
}