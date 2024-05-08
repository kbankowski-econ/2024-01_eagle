function [y, T, residual, g1] = static_293(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4719)=params(1075)*(y(7078)/T(2780))^params(1080);
  residual(1)=(y(7114))-((1-params(1075))*(y(7146)/y(7145))^(-params(1080))+y(7114)*T(4719));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4719);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
