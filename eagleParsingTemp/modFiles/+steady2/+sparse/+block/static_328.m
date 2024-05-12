function [y, T, residual, g1] = static_328(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4712)*y(4760))-(y(4713)*y(4761)+y(4714)*y(4762)+y(4715)*y(4763)+y(4716)*y(4764));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4712);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
