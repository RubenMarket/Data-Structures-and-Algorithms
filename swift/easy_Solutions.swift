// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

func containsDuplicate(nums: [Int]) -> Bool {
    if nums.count == Set(nums).count { return false }
    return true
}
containsDuplicate(nums:[1,1,1,3,3,4,3,2,4,2]) // Assert true
containsDuplicate(nums:[[1,2,3,4]) // Assert false

// 242. Valid Anagram
// https://leetcode.com/problems/valid-anagram/
// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
// An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

func isAnagram(s: String,t: String) -> Bool {
    if s.count != t.count { return false }
    if s.sorted() == t.sorted() { return true }
}

// 1. Two Sum
// https://leetcode.com/problems/two-sum/
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// You can return the answer in any order.

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict:[Int:Int] = [:]
    for i in 0..<nums.count {
        // saving new target value as key of dict
        let value = target - nums[i]
        // if target value is a key in dict return its index and the current one
        if let val = dict[value] {
            return [val,i]
        } else {
            // if target is not in dict set in dict
            dict[nums[i]] = i
        }
        return []
    } 

}
// O(n) time


// 125. Valid Palindrome
// https://leetcode.com/problems/valid-palindrome/
// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
// Given a string s, return true if it is a palindrome, or false otherwise.

   func isPalindrome(_ s: String) -> Bool {
     if s == nil { return false} 
        if s.count == 1 { return true}
    let str:[Character] = Array(s.lowercased()) 
    let filteredStr = str.filter { c in
  return c.isLetter || c.isNumber
}
    return checkCharacterArray(str:filteredStr)
    
}

func checkCharacterArray(str:[Character]) -> Bool {
var p1:Int = 0
    var p2:Int = str.count-1
    while p1 < p2 {
    if str[p1] != str[p2] {
        return false
    } 
    if str[p1] == str[p2] {
        p1 += 1
        p2 -= 1
    }
    }
    return true
}