function [y, T, residual, g1] = static_353(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5497)=params(373)*(y(1979)/T(1352))^params(378);
  residual(1)=(y(2017))-((1-params(373))*(y(2050)/y(2049))^(-params(378))+y(2017)*T(5497));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5497);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
