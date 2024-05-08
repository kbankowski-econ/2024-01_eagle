function [y, T] = dynamic_150(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(5998)=y(5920);
  y(5834)=((params(403)+T(7)-1)*y(5998)-params(403)*x(141)*y(5994))/(y(5994)*(1-x(141)));
  y(4269)=y(4339)*y(4293)+y(4338)*y(4272)-y(4377)*y(4316)-y(4330)*(1+y(4390))*y(4411);
end
