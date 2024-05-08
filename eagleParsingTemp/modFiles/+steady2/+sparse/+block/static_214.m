function [y, T, residual, g1] = static_214(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3059)=params(310)*(y(977)/T(1976))^params(315);
  residual(1)=(y(1015))-((1-params(310))*(y(1047)/y(1046))^(-params(315))+y(1015)*T(3059));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3059);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
