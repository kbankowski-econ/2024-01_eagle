function [y, T, residual, g1] = static_264(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2915)=params(149)*T(775)^params(154);
  residual(1)=(y(765))-((1-params(149))*(y(798)/y(797))^(-params(154))+y(765)*T(2915));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2915);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
