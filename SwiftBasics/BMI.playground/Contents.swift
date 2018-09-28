import UIKit

func calcBMI(weight: Double, height: Double) -> String {

    //return (weight / (height * height))
    
    let maxWeight:Double = 25, minWeight:Double = 18.5
    
    let bmiResult =  (weight / pow(height, 2))
    let formatBMI:String = String(format: "%.2f", bmiResult)
    
    var result:String = ""
    if bmiResult > maxWeight {
        result = "You are over weight"
    } else if bmiResult < maxWeight && bmiResult > minWeight{
        result = "Normal weight"
    }else if bmiResult < minWeight {
        result = "You are under weight"
    }
    return "Your BMI is: \(formatBMI) \(result)"
}



print (calcBMI(weight: 63,height: 1.8))


//BMI for the US
func bmiCalculImperialUnits(weightInPounds: Double, heightInFeet: Double, remainderInches: Double) -> String{
    let weightInKg = weightInPounds * 0.4359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInM = totalInches * 0.0254
     let bmi = weightInKg / pow(heightInM, 2)
    
    return "\(bmi)"
}
print (bmiCalculImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInches: 11))


