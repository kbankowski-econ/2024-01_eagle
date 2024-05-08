function [y, T, residual, g1] = static_399(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2621))-(y(2641)*log(y(2483)-params(681)*y(2483))-1/(1+params(724))*y(2545)^(1+params(724))+params(664)*y(2621));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(664);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
