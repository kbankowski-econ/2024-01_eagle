function [y, T, residual, g1] = dynamic_125(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6237)*y(6290))-(y(6238)*y(6291)+y(6240)*y(6292)+y(6242)*y(6293)+y(6244)*y(6294));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6237);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
