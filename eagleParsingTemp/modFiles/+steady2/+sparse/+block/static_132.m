function [y, T, residual, g1] = static_132(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(33)=log(y(3412));
  residual(1)=(T(33))-((1-params(974))*log(x(230))+T(33)*params(974)+x(244));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3412)-params(974)*1/y(3412);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
