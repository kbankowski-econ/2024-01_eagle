function [y, T] = dynamic_229(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(13673)=y(13590);
  y(13503)=((params(710)+T(10)-1)*y(13673)-params(710)*x(249)*y(13669))/(y(13669)*(1-x(249)));
end
