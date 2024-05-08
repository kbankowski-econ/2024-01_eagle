function [y, T, residual, g1] = static_296(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3218)=params(745)*T(1721)^params(750);
  residual(1)=(y(3309))-((1-params(745))*(y(3342)/y(3341))^(-params(750))+y(3309)*T(3218));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3218);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
