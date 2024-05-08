function [y, T, residual, g1] = static_201(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2015)=params(537)*(y(2444)/T(423))^params(542);
  residual(1)=(y(2482))-((1-params(537))*(y(2515)/y(2514))^(-params(542))+y(2482)*T(2015));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2015);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
