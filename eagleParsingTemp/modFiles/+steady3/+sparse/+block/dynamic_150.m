function [y, T, residual, g1] = dynamic_150(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9695)*y(9748))-(y(9696)*y(9749)+y(9698)*y(9750)+y(9700)*y(9751)+y(9702)*y(9752));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9695);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
