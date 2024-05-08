function [y, T, residual, g1] = static_374(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6775)=params(1370)*T(4079)^params(1375);
  residual(1)=(y(5045))-((1-params(1370))*(y(5077)/y(5076))^(-params(1375))+y(5045)*T(6775));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6775);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
