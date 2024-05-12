function [y, T, residual, g1] = static_343(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5551)=params(149)*T(183)^params(154);
  residual(1)=(y(1010))-((1-params(149))*(y(1043)/y(1042))^(-params(154))+y(1010)*T(5551));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5551);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
