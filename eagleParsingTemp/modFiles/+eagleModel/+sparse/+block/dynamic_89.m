function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6298)*y(6351))-(y(6299)*y(6352)+y(6301)*y(6353)+y(6303)*y(6354)+y(6305)*y(6355));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6298);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
