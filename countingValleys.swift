
func countingValleys(steps: Int, path: String) -> Int {
var valley = 0
var position = 0
var previousPosition = 0
let newSteps = Array(path)
for i in 0...steps - 1{
    if newSteps[i] == "U" {
    previousPosition = position
    position += 1
    if position == 0 {
       if previousPosition < 0 {
           valley += 1
       }
    }
    }else{
    previousPosition = position
    position -= 1
     if position == 0 {
       if previousPosition < 0 {
           valley += 1
       }
    }
    }
    
   
}

return valley
}


 countingValleys(steps: 100, path: "UDUDDUUUDUDUDUUDUUDDDDDUDUDDDDUUDDUDDUUUUDUUDUDDDDUDUDUUUDDDUUUDUDDUUDDDUUDDUDDDUDUUDUUDUUDUDDDUUUUU")
