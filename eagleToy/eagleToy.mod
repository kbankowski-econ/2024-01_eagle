options_.homotopy_mode = 1;
options_.solve_algo = 5;
options_.markowitz = 5;

// 1. Variable declaration
var y c k;
varexo z;
parameters alpha beta delta;

// 2. Parameter values
alpha = 0.3;
beta = 0.99;
delta = 0.025;

// 3. Model equations
model(block, bytecode, cutoff = 0);
c + k = y + (1-delta)*k(-1);
y = z*k(-1)^alpha;
1/c = beta*(1/c(+1))*(alpha*y(+1)/k + 1 - delta);
end;

// 4. Steady state values
initval;
k = 9;
y = 1;
c = 0.76;
z = 1;
end;

// 6. Computation tasks
homotopy_setup;
z, 1;
end;
steady(homotopy_steps = 15);

// Conclusions
// The same values in the homothopy block are fine.

