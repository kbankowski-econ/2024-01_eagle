function [y, T, residual, g1] = static_226(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3075)=params(100)*T(1158)^params(105);
  residual(1)=(y(295))-((1-params(100))*(y(327)/y(326))^(-params(105))+y(295)*T(3075));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3075);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
