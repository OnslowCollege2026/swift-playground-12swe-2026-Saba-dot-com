@main
struct SwiftPlayground {
    static func main() {

// Convert score into NCEA grade
        func getGrade(for score: Int) -> String {
            if score >= 80 {
                return "Excellence"
            } else if score >= 60 {
                return "Merit"
            } else if score >= 40 {
                return "Achieved"
            } else {
                return "Not achieved"
            }

        }

    // Ask the user for a valid score

    var userScore: Int? = nil

    while userScore == nil {
        print("Enter your score (0-100): ")

        if let input = readLine(), let number = Int(input) {
            if number <= 100 && number >= 0 {
                userScore = number
            } else {
                print("Score must be between 0 and 100. Try again")
            }
        } else {
            print("You entered an invalid score. Please try again. ")
        }
    }

    // Once the score is valid (as confirmed above)
    // Call getGrade function and label it grade


    let grade = getGrade(for : userScore!)
    print("Your grade is: \(grade)")
    

}
}