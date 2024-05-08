function [y, T, residual, g1] = static_267(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2707)=params(168)*T(768)^params(173);
  residual(1)=(y(747))-((1-params(168))*(y(780)/y(779))^(-params(173))+y(747)*T(2707));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(2707);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
