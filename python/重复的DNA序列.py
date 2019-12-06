#!/usr/bin/env python
# -*- coding=utf8 -*-
# @Author: SamSa
"""
所有 DNA 都由一系列缩写为 A，C，G 和 T 的核苷酸组成，例如：“ACGAATTCCG”。在研究 DNA 时，识别 DNA 中的重复序列有时会对研究非常有帮助。

编写一个函数来查找 DNA 分子中所有出现超过一次的 10 个字母长的序列（子串）。

 

示例：

输入：s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
输出：["AAAAACCCCC", "CCCCCAAAAA"]

来源：力扣（LeetCode）
链接：https://leetcode-cn.com/problems/repeated-dna-sequences
著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
"""


class Solution:
    def findRepeatedDnaSequences(self, s):
        res = dict()
        for i in range(len(s) - 9):
            tmp = s[i: i + 10]
            if tmp in res:
                res[tmp] = True

            else:
                res[tmp] = False

        return filter(lambda x: res[x], res)
