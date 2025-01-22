CC =gcc
CFLAGS= -Wall -lm
MPICC=mpicc

poisson: 
	$(CC) $(CFLAGS) -o poisson poisson.c

clean:
	rm -f poisson

