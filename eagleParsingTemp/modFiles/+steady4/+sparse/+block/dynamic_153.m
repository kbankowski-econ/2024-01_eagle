function [y, T, residual, g1] = dynamic_153(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7498)*y(7551))-(y(7499)*y(7552)+y(7501)*y(7553)+y(7503)*y(7554)+y(7505)*y(7555));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7498);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
