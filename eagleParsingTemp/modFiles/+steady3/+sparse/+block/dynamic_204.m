function [y, T, residual, g1] = dynamic_204(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(16271)*y(16324))-(y(16272)*y(16325)+y(16274)*y(16326)+y(16276)*y(16327)+y(16278)*y(16328));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(16271);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
