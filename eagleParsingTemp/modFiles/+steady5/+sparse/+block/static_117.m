function [y, T, residual, g1] = static_117(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(30)=log(y(4088));
  residual(1)=(T(30))-((1-params(605))*log(x(202))+T(30)*params(605)+x(216));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(4088)-params(605)*1/y(4088);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
