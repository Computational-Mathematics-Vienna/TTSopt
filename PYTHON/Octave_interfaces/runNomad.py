#####################################################################
# author : Romana Jezek
# date : 05/10/2022
#
# optim: runs Nomad optimization with the input:
#   x0Str: initial point as string
#        e.g. '1,1,1'
#   lbStr: lower bound as string
#        e.g. '0,0,0'
#   ubStr: upper bound as string
#        e.g. '1,3,5'
#   nfmax: the maximal number of function evaluations
#        it is used in the list of parameters for Nomad
#        e.g. '["MAX_EVAL 1000"]'
# bb: wrapper for the octave function GETftune, which is the objective
#     function
######################################################################

import pdb
import sys
import PyNomad
from oct2py import octave
from ast import literal_eval

username = '/users/rjezek/OctaveWorkSpace/TEallFinal'
sys.path.append(username + '/SOLVERS/nomad/interfaces/PyNomad')

def bb(x):
    dim = x.size()
    x1=[x.get_coord(i) for i in range(dim)]
    
    octave.addpath(username + '/TE')

    try:
      meanqf = octave.TUNEgetf(x1,1,username)
      x.setBBO(str(meanqf).encode("UTF-8"))
    except:
      print('an error occured')            
      return 0
       
    return 1 # 1: success 0: failed evaluation


def optim(x0Str,lbStr,ubStr,params):

    x0 = literal_eval(x0Str)
    lb = literal_eval(lbStr)
    ub = literal_eval(ubStr)
    params = literal_eval(params)
    
    result = PyNomad.optimize(bb, x0, lb, ub, params)
    print(params)
    vec = list(result.values())[0:len(result)]
      
    return vec


if __name__ == "__main__":
 
    x0Str = sys.argv[1]
    lbStr = sys.argv[2]
    ubStr = sys.argv[3]
    params = sys.argv[4]

    v = optim(x0Str,lbStr,ubStr,params)

    print(v)
   
    file = open(username + '/TE/nomadResult.txt', 'w')
    file.write("result = " + str(v) + ";")
    file.close()
