function [y, T, residual, g1] = static_221(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(55)=params(470)^(-1);
  residual(1)=(y(2996))-(T(55)*y(2967));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(55));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
