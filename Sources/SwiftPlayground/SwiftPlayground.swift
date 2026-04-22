@main
struct SwiftPlayground {
    static func main() {

        /// Allows owner to add kumara
        func addKumara(currentStock: Int, amount: Int) -> Int {
            var kumaraInStock = currentStock + amount
            return kumaraInStock
        }

        func viewCurrentStock(currentStock: Int) -> Int {
            return currentStock
        }

        func addBag() {
            var 
        }

        func checkKumaraWeigth(kumaraWeight: Int) -> String {
            guard let kumaraWeight <= 0.1 && kumaraWeight >= 50.0 {
                print("Invalid weight. Try again.")
            }
        }
}
}