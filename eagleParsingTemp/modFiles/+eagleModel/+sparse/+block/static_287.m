function [y, T, residual, g1] = static_287(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(85)=params(900)^(-1);
  residual(1)=(y(4858)*(1-y(6897)))-(T(85)*y(4829));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-y(6897);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
