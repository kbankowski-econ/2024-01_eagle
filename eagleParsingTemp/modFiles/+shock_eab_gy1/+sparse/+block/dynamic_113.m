function [y, T, residual, g1] = dynamic_113(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9498)*y(9551))-(y(9499)*y(9552)+y(9501)*y(9553)+y(9503)*y(9554)+y(9505)*y(9555));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9498);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
