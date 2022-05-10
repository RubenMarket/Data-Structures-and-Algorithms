# 217. Contains Duplicate
# https://leetcode.com/problems/contains-duplicate/
# Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

def containsDuplicate(self, nums):
        if len(nums) == len(set(nums)):
            return False
        return True


# // 242. Valid Anagram
# // https://leetcode.com/problems/valid-anagram/
# // Given two strings s and t, return true if t is an anagram of s, and false otherwise.
# // An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

def isAnagram(self, s, t):
        if sorted(s) == sorted(t):
            return True
        return False


        