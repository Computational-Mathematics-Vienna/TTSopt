#####################################################################
# author : Romana Jezek
# date : 17/08/2023
#
# optim: runs Powell optimization with the input:
#   fun: function name as string
#        e.g. "lambda x: sin(x)"
#   x0: initial point as string
#        e.g. "[1,1,1]"
#   options: optional
#        see help(pdfo)
#        e.g."{'maxfev: 10'}""
# bb: wrapper for the octave function getf, which is the objective
#     function
######################################################################


from oct2py import octave
from oct2py import Oct2PyError
from ast import literal_eval
import sys
from pdfo import *


def bb(x):
    username = '/home/romana/OctaveWorkSpace';    
    octave.addpath(username + '/TEallFinal/TE')
    try:
      f = octave.getf(x,username)
    except:
      raise Exception("an error occured")     
    return f

def optim(args):

    result = pdfo(bb,args[0],options=args[1],method='uobyqa')
    vec = list(result.values())[0:len(result)]
      
    return vec


if __name__ == "__main__":

    args=[]
    x0 = literal_eval(sys.argv[1])
    args.append(x0)
    params={}
    
    for item in sys.argv:
      arr=item.rsplit('=')

      if arr[0] == 'low':
         low = literal_eval(arr[1])
      elif arr[0] == 'upp':
         upp = literal_eval(arr[1])
      elif arr[0] == 'params':
         for item in literal_eval(arr[1]):
            params.update(item)
    args.append(params)

    v = optim(args)
    res = str(v[0]) + ',' + str(v[1])
    
