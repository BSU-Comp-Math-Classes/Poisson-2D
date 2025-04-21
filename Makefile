CC =gcc
CFLAGS= -Wall -lm
MPICC=mpicc

poisson: 
	$(CC) $(CFLAGS) -o poisson poisson.c

poisson_mpi: poisson_mpi.c 
	$(MPICC) $(CFLAGS) -o poisson_mpi poisson_mpi.c

clean:
	rm -f poisson

