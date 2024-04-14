#####################################################################
# author : Romana Jezek
# date : 10/08/2023
#
# optim: runs Powell optimization with the input:
#   fun: function name as string
#        e.g. "lambda x: sin(x)"
#   x0: initial point as string
#        e.g. "[1,1,1]"
#   bounds: optional, the lower and upper bound as string
#        e.g. "Bounds([0,0,0],[1,1,1])"
#   options: optional
#        see help(pdfo)
#        e.g."{'maxfev: 10'}""
# bb: wrapper for the octave function getf, which is the objective
#     function
######################################################################

from pdfo import *
from oct2py import octave
from oct2py import Oct2PyError
from ast import literal_eval
import numpy as np
import sys


def bb(x):
    
    username = "users/rjezek/ithilien";
    octave.addpath(username + "/TEallFinal/TE")
    try:
      f = octave.getf(x,username)
      print(f)
    except:
      raise Exception("an error occured")
      
       
    return f

def optim(args):
    if len(args) == 4:
      result = lincoa(bb,args[0],bounds=args[1],constraints=args[2],options=args[3])
    else:
      result = lincoa(bb,args[0],bounds=args[1],options=args[2])
    vec = list(result.values())[0:len(result)]
      
    return vec


if __name__ == "__main__":
    args=[]
    x0 = literal_eval(sys.argv[1])
    args.append(x0)
    low=[]
    upp=[]
    params={}
    
    for item in sys.argv:
      arr=item.rsplit('=')

      if arr[0] == 'low':
         low = literal_eval(arr[1])
      elif arr[0] == 'upp':
         upp = literal_eval(arr[1])
      elif arr[0] == 'eqtype':
         eqtype = literal_eval(arr[1])
      elif arr[0] == 'Aineq':
         Aineq = literal_eval(arr[1])
      elif arr[0] == 'Aeq':
         Aeq = literal_eval(arr[1])
      elif arr[0] == 'lbineq':
         lbineq = literal_eval(arr[1])
      elif arr[0] == 'ubineq':
         ubineq = literal_eval(arr[1])
      elif arr[0] == 'beq':
         beq = literal_eval(arr[1])
      elif arr[0] == 'bineq':
         bineq = literal_eval(arr[1])
      elif arr[0] == 'params':
         for item in literal_eval(arr[1]):
            params.update(item)
      bounds = Bounds(low,upp)      
    args.append(bounds)
    try:
        constraints = LinearConstraint(Aineq, lbineq, ubineq)
        args.append(constraints)
    except:
        print('continue')
    
    args.append(params)

    v = optim(args)
    res = str(v[0]) + ',' + str(v[1])
    print(res)
    file = open('/users/rjezek/OctaveWorkSpace/TEallFinal/TE/bobyqaResult.txt', 'w')
    file.write(res)
    file.close()
