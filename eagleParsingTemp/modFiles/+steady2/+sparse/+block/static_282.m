function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3971))-(y(4025)*(1-params(1118))+y(3971)*params(1118)+x(266));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1118);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
