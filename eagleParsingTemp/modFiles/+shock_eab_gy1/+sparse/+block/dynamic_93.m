function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9520)*y(9573))-(y(9521)*y(9574)+y(9523)*y(9575)+y(9525)*y(9576)+y(9527)*y(9577));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9520);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
