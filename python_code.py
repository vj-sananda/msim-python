def sum(a,b,c):
    return (a+b+c);


def main():
    print "Py Executing within the python code"
    print "Values stored in embedded Python in C code"
    print " a = ", a
    print " b = ", b
    print " c = ", c
    result = sum(a,b,c)
    print " a + b + c = ",result
    print " "

if __name__ == '__main__':
    main()

    
