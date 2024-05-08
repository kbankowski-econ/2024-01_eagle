function [y, T, residual, g1] = dynamic_58(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4878)*y(4931))-(y(4879)*y(4932)+y(4881)*y(4933)+y(4883)*y(4934)+y(4885)*y(4935));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4878);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
