function [y, T, residual, g1] = static_458(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5816)=params(473)*T(135)^params(478);
  residual(1)=(y(2532))-((1-params(473))*(y(2565)/y(2564))^(-params(478))+y(2532)*T(5816));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5816);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
