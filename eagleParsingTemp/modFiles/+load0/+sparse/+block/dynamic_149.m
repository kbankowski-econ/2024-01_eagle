function [y, T, residual, g1] = dynamic_149(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9651)*y(9704))-(y(9652)*y(9705)+y(9654)*y(9706)+y(9656)*y(9707)+y(9658)*y(9708));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9651);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
