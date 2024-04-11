function [y, T, residual, g1] = static_172(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1656)=params(149)*(y(642)/T(260))^params(154);
  residual(1)=(y(680))-((1-params(149))*(y(713)/y(712))^(-params(154))+y(680)*T(1656));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1656);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
