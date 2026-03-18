@main
struct SwiftPlayground {
    static func main() {
        // The width and length of the ocean
        let size = 6

        // The ocean
        var ocean = Array(repeating: Array(repeating: "~", count: size), count: size) 

        // Record of guesses
        var guesses = Array(repeating: Array(repeating: "~", count: size), count: size)

        // Placing the ship
        //ocean[]

        print(ocean)

        }
}
