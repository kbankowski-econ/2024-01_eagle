function [y, T, residual, g1] = dynamic_168(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(13)=params(855)^(-1);
  residual(1)=(y(14671))-(T(13)*y(14642));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(13));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
