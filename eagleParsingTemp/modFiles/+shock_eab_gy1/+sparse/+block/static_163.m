function [y, T, residual, g1] = static_163(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(41)=log(y(5672));
  residual(1)=(T(41))-((1-params(1068))*log(x(295))+T(41)*params(1068)+x(310));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(5672)-params(1068)*1/y(5672);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
