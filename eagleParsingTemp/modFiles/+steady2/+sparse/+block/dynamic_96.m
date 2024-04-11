function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3938)*y(3986))-(y(3939)*y(3987)+y(3940)*y(3988)+y(3941)*y(3989)+y(3942)*y(3990));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3938);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
