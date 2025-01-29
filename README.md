# Poisson-2D
Poisson equation is a classic partial differential equation used to model fluid dynamics, heat transfer, electorstatic fields, displacement of thin membranes and many other problems. The equation reads

 $$ \nabla^2 q = f  $$

 where $u$ is the quantity we model (i.e. pressure of a fluid, temperature, electrostatic potential, displacement) and $f$ is the forcing function. You can imagine $q$ being the displacement of a thin membrane subject to pressure modeled by function $f$ (this function would also include some material properties of the membrane, so it is not just the pressure). 
 
 To complete the problem, we need to prescribe the boundary conditions, which in this case will be just constant (zero) value of the variable $q = 0$ at the boundary.

We will solve the Poisson equation on a square domain $(x,y) \in [0,\ L] \times [0,\ L]$. To make things easy, we choose a forcing function

$$ f(x,y) = -8\pi^2\sin(2\pi x)\sin(2\pi y) $$

which results in the exact solution (obtained by analytical solution)

$$ q_{exact}(x,y) = \sin(2\pi x)\sin(2\pi y) $$

You are very welcome to change that forcing function if you want to model some more practical problem. Similarily, feel free to adjust boundary conditions if you want, but this can get more tricky, so talk to me if this interests you.

## Numerical method

We solve the system of equations by first dividing the domain into a set of $N \times N$ elements

<img width="832" alt="image" src="https://github.com/user-attachments/assets/b330a24a-294b-45f7-a33f-6380e2429045" />

and locate the solution variables $u_{i,j}$ inside each of the elements. We then discretize the diffusion operator

$$\nabla^2 u_{i,j} \approx \frac1{\Delta x^2}\left( u_{i-1,j} + u_{i+1,j} + u_{i,j-1} + u_{i,j+1} - 4u_{i,j} \right)$$

where $\Delta x$ is the size of each element. This leads to the equation for each point (element)

$$ \frac1{\Delta x^2}\left( u_{i-1,j} + u_{i+1,j} + u_{i,j-1} + u_{i,j+1} - 4u_{i,j} \right) = f_{ij} $$

We can represent this in a matrix form

$$ \frac1{\Delta x^2} \mathbf{A} \vector{u} = \vec{f} $$

where

