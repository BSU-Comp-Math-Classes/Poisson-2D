# Poisson-2D
Poisson equation is a classic partial differential equation used to model fluid dynamics, heat transfer, electorstatic fields, displacement of thin membranes and many other problems. The equation reads

 $$ \nabla^2 q = f  $$

 where $u$ is the quantity we model (i.e. pressure of a fluid, temperature, electrostatic potential, displacement) and $f$ is the forcing function. You can imagine $q$ being the displacement of a thin membrane subject to pressure modeled by function $f$ (this function would also include some material properties of the membrane, so it is not just the pressure). 
 
 To complete the problem, we need to prescribe the boundary conditions, which in this case will be just constant (zero) value of the variable $q = 0$ at the boundary (but you can change that if you want to have some fun). 

We will solve the Poisson equation on a square domain $(x,y) \in [-L,\ L] \times [-L,\ L]$


