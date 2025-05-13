class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1Array = Array(word1)
        let word2Array = Array(word2)
        var arraySuffix = [Character]()
        let diff = word1Array.count - word2Array.count
        var answer = ""
        if diff > 0 {
            arraySuffix = word1.suffix(diff)
        } else if diff < 0 {
            arraySuffix = word2.suffix(-diff)
        }
        for (letter1, letter2) in zip(word1, word2) {
            answer.append(letter1)
            answer.append(letter2)
        }
        arraySuffix.forEach { answer.append($0) }
        return answer
    }
}
