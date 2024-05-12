function [y, T, residual, g1] = static_315(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5374)=params(1076)*T(1669)^params(1081);
  residual(1)=(y(7466))-((1-params(1076))*(y(7499)/y(7498))^(-params(1081))+y(7466)*T(5374));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5374);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
