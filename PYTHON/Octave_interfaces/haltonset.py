#####################################################################
# author : Romana Jezek
# date : 25/10/2022
#
# getPoints: 
#   input: dimension of the points
#   return: points in the form '[p[0,0],p[0][1];p[1,0],p[1][1]]'
#####################################################################

import ghalton
import sys

n = sys.argv[1]



def getPoints(n):
        sequencer = ghalton.Halton(int(n))
        points = sequencer.get(1007)
        pStr= '['
        for i in range(len(points)-1):
          v = ''
          for j in range(len(points[0])-1):
             v += str(points[i][j]) + ','
          v += str(points[i][-1])
          pStr += v + ';'
        for k in range(len(points[-1])-1):
          pStr += str(points[-1][k])+','
        pStr += str(points[-1][-1]) + ']'

          
        return pStr
             
if __name__ == "__main__":
	print(getPoints(n))




 


