function [y, T, residual, g1] = static_292(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4419)=params(1012)*T(2657)^params(1017);
  residual(1)=(y(3551))-((1-params(1012))*(y(3583)/y(3582))^(-params(1017))+y(3551)*T(4419));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4419);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
