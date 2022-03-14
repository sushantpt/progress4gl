/*
  Question: Given an array of integers nums and an integer target, 
  return value of the two numbers such that they add up to target1.
  -----------------------------------------------------------------------
  Output : [8, 7] {Reason: nums[4] + nums[5] == target1 (i.e. 15) }
  -----------------------------------------------------------------------
*/

DEF VAR nums        AS INT EXTENT 5 NO-UNDO.
DEF VAR target1     AS INT INIT 15 NO-UNDO.

// initialize variables to store indices or output
DEF VAR firstIndex  AS INT NO-UNDO.
DEF VAR secondIndex AS INT NO-UNDO.

// variables to loop
DEF VAR i           AS INT NO-UNDO.
DEF VAR j           AS INT NO-UNDO.

ASSIGN
  nums[1] = 2
  nums[2] = 3
  nums[3] = 5
  nums[4] = 8
  nums[5] = 7
  .

DO i = 1 TO EXTENT(nums):
  DO j = i + 1 TO EXTENT(nums):
    IF nums[i] + nums[j] = target1 THEN
      ASSIGN
        firstIndex  = nums[i]
        secondIndex = nums[j]
        .
  END.
END.

MESSAGE firstIndex "," secondIndex
  VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

