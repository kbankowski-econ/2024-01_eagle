function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3530)*y(3583))-(y(3531)*y(3584)+y(3533)*y(3585)+y(3535)*y(3586)+y(3537)*y(3587));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3530);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
