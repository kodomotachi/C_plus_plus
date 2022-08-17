def isValidDate(d, m, y):
     thirtyone = [1, 3, 5, 7, 8, 10, 12]
     thirty = [4, 6, 9, 11]
     bit = 0
     if (1 <= d) and (d <= 31) and (m in thirtyone):
          bit = 1
     elif (1 <= d) and (d <= 30) and (m in thirty):
          bit = 1
     s = y%4
     if (s == 0):
          if (1 <= d) and (d <= 29):
               bit = 1
     else:
          if (1 <= d) and (d <= 28):
               bit = 1
     if (bit == 1):
          return True
     else:
          return False