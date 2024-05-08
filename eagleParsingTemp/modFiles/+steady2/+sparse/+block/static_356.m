function [y, T, residual, g1] = static_356(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6773)=params(1495)*(y(5472)/T(3148))^params(1500);
  residual(1)=(y(5510))-((1-params(1495))*(y(5542)/y(5541))^(-params(1500))+y(5510)*T(6773));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6773);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
