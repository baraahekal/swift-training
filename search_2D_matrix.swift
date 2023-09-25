
class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for row in matrix {
            if row.last ?? 0 < target {
                continue
            }
            
            for element in row {
                if element == target {
                    return true
                }
            }
        }
        return false
    }
}
