function [y, T, residual, g1] = static_53(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(14)=log(y(1174));
  residual(1)=(T(14))-((1-params(361))*log(x(94))+T(14)*params(361)+x(108));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(1174)-params(361)*1/y(1174);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
