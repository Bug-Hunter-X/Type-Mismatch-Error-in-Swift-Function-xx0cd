func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5)
print(area) // Output: 50.0

//Corrected code to handle potential type mismatch
func calculateAreaCorrected(width: Double, height: Double) -> Double? {
  guard let width = width as? Double, let height = height as? Double else { return nil }
    return width * height
}

let area3 = calculateAreaCorrected(width: 10, height: 5) //Correct Output: 50.0
print(area3 ?? 0) 
let area4 = calculateAreaCorrected(width: 10, height: "hello" as! Double) //Compile time error