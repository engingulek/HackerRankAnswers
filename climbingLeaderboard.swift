
// // This answer given errors on Test Case 11,12,13,14,15. I think  it takes a long time to work. I try to do not use shortcut( example -> enumareted and sorted) when I solve the quetions
func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var list: [Int] = []
    var changeRanked = Array(Set(ranked)).sorted(by: >)

    for playerScore in player {
        
        changeRanked.append(playerScore)
        changeRanked.sort(by: >)

        var rank = 1
        for score in changeRanked {
            if score == playerScore {
                list.append(rank)
                break
            }
            rank += 1
        }
        if let index = changeRanked.firstIndex(of: playerScore) {
            changeRanked.remove(at: index)
        }
    }

    return list
}
