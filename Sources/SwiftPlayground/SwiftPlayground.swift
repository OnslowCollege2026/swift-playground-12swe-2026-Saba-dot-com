func columnTotal(in table2: [[Int]], column: Int) {
    //var total = 0
    // guard table2.isEmpty, column >= 0, column < table2[column].count else {
    //     return 
    // }

    var columnCount = [0]
    
    for column in table2 {
        for row in table2 {
            if column < row.count {
                columnCount.append(row[column])
                print(columnCount)
            }
}
print(columnCount, "hi")
}
}

@main
struct SwiftPlayground {
    static func main() {



let temperatures = [
    [1 , 2, 3, 4], 
    [5, 6, 7, 8], 
    [9, 10, 11, 12]]

// TASK A
print(temperatures[0])
print(temperatures[1][2])
print(temperatures[2][0])

let secondRow = temperatures[1]

let secondRowAverage = (secondRow[0] + secondRow[1] + secondRow[2] + secondRow[3]) / 4
print("The average temperature of row two is \(secondRowAverage)")




// TASK B

// let table = [
//         [2, 4, 6],
//         [8, 10, 12],
//         [14, 16, 18]
//     ]


// var numOfNumbers = 0
// for row in table {
//     for value in row {
//         print(value)
//         numOfNumbers += 1
//     }
// }
// print(numOfNumbers)



// TASK C

let table2 = [
    [3, 5, 7, 9],
    [2, 4],
    [8, 6, 1],
    [10]
]


columnTotal(in: table2, column: 4)



    }
}