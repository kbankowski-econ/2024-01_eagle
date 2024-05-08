function [y, T, residual, g1] = static_238(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3078)=params(838)*T(2176)^params(843);
  residual(1)=(y(2815))-((1-params(838))*(y(2847)/y(2846))^(-params(843))+y(2815)*T(3078));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3078);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
