function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5524)*y(5577))-(y(5525)*y(5578)+y(5527)*y(5579)+y(5529)*y(5580)+y(5531)*y(5581));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5524);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
