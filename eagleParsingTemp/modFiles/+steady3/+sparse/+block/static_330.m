function [y, T, residual, g1] = static_330(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(929)*y(982))-(y(930)*y(983)+y(932)*y(984)+y(934)*y(985)+y(936)*y(986));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(929);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
