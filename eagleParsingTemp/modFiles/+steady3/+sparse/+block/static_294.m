function [y, T, residual, g1] = static_294(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4627)=params(999)*T(470)^params(1004);
  residual(1)=(y(6605))-((1-params(999))*(y(6638)/y(6637))^(-params(1004))+y(6605)*T(4627));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4627);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
