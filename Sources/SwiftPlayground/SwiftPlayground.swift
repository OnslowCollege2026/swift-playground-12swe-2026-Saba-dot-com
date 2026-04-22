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

        func checkKumaraWeigth() -> String {
            guard let kumaraWeight <= 0 
        }
}
}