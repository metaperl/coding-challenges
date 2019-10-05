#@+leo-ver=5-thin
#@+node:metaperl.20191005022526.1: * @file valid_parens.py
#@@language python
#@@tabwidth -4

def valid_parens(s, expect=None): # how to type-hint a string which is optionally none?
    
    complement = dict(zip("({[", ")}]"))
    
    if expect == None:
        if len(s) == 0:
            return True
        c  = s.next()
        if complement.get(c):
            return valid_parens(s[1:], expect=complement(c))
    else:
        if len(s) == 0:
            return False
        c = s.next()
        if c == expect:
            return True
        if complement.get(c):
            return valid_parens(s[1:], expect=complement(c)) 
    
        
#@-leo
