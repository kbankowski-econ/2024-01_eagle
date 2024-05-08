function [y, T] = dynamic_160(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(6796)=y(6718);
  y(5132)=y(4912);
  y(6631)=((params(402)+T(7)-1)*y(6796)-params(402)*x(141)*y(6792))/(y(6792)*(1-x(141)));
  y(5131)=y(4911);
end
