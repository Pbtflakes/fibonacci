program fibonacci
        implicit none

        write(*,*) 'Foo'
        write(*,*) fibo(0)
        
        contains
                !function fib(x)
                !        real :: fib, x
                !end function fib
                
                recursive function fibo(x) result(fibon)
                        integer, dimension(2) :: fibon
                        integer :: x, a, b, c, d, e, k

                        if (x == 0) then
                                fibon(1) = 0
                                fibon(2) = 1
                        else
                                e = x / 2
                                k = 1
                                a = fibo(e:k)
                                k = 2
                                b = fibo(e:k)
                                c = a * (b * 2 - a)
                                d = a**2 + b**2
                                if (mod(x,2) == 0) then
                                        fibon(1) = c
                                        fibon(2) = d
                                else
                                        fibon(1) = d
                                        fibon(2) = c + d
                                end if
                        end if
                end function fibo
end program fibonacci
