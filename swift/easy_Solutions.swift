// 217. Contains Duplicate
// https://leetcode.com/problems/contains-duplicate/
// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

func containsDuplicate(nums: [Int]) -> Bool {
    if nums.count == Set(nums).count { return false }
    return true
}
containsDuplicate(nums:[1,1,1,3,3,4,3,2,4,2]) // Assert true
containsDuplicate(nums:[[1,2,3,4]) // Assert false