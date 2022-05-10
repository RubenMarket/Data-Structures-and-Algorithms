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


# 1. Two Sum
# https://leetcode.com/problems/two-sum/
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.


def twoSum(self, nums, target):
        hashmap = {} #python dictionary
        
        for i in range(len(nums)):
            diff = target - nums[i] #finding target number pair
            if diff in hashmap:  # check if target pair is in dict
                return [i,hashmap[diff]] # return indices of the pairs ( i in this case and indicie saved as value in dict)
            hashmap[nums[i]] = i # saving number as key in dict if a pair not found yet and its indicie as value


# - Two Pointer

# 125. Valid Palindrome
# https://leetcode.com/problems/valid-palindrome/
# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.
# Given a string s, return true if it is a palindrome, or false otherwise.

def isPalindrome(self, s):
        lst = []
        Str = s.lower()  # lower casing string
        for i in Str:
            if i.isalnum(): # checking for only alphanumerics
                lst.append(i)  # adding only alphanumerics to list
        return lst == lst[::-1]  # checking if list is the same as the list backwards ([::-1] is reversing list)


