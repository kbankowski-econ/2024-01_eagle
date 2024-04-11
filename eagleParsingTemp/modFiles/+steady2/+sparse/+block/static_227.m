function [y, T, residual, g1] = static_227(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2091)=params(286)*T(94)^params(291);
  residual(1)=(y(984))-((1-params(286))*(y(1016)/y(1015))^(-params(291))+y(984)*T(2091));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2091);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
