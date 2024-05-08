function [y, T, residual, g1] = static_221(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2717)=params(930)*T(1452)^params(935);
  residual(1)=(y(3904))-((1-params(930))*(y(3936)/y(3935))^(-params(935))+y(3904)*T(2717));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2717);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
