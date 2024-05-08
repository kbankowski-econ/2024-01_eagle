function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5122)=params(919)*(y(6054)/T(2249))^params(924);
  residual(1)=(y(6092))-((1-params(919))*(y(6125)/y(6124))^(-params(924))+y(6092)*T(5122));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5122);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
