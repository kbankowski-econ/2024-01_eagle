function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3316)*y(3369))-(y(3317)*y(3370)+y(3319)*y(3371)+y(3321)*y(3372)+y(3323)*y(3373));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3316);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
