function [y, T, residual, g1] = dynamic_140(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5)=params(523)^(-1);
  residual(1)=(y(7768))-(T(5)*y(7739));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=(-T(5));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
