function [y, T, residual, g1] = static_302(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4968)*y(5016))-(y(4969)*y(5017)+y(4970)*y(5018)+y(4971)*y(5019)+y(4972)*y(5020));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4968);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
