function [y, T] = dynamic_202(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6708)=y(6628);
  y(6541)=((params(94)+T(6)-1)*y(6708)-params(94)*x(33)*y(6704))/(y(6704)*(1-x(33)));
  y(8093)=y(7990);
end
