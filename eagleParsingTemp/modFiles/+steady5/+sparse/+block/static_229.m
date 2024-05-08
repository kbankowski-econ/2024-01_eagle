function [y, T, residual, g1] = static_229(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2431)=params(614)*T(629)^params(619);
  residual(1)=(y(3044))-((1-params(614))*(y(3077)/y(3076))^(-params(619))+y(3044)*T(2431));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2431);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
