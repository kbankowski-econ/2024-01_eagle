function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(6762)=params(245)*T(373)^params(250);
  residual(1)=(y(860))-((1-params(245))*(y(892)/y(891))^(-params(250))+y(860)*T(6762));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(6762);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
