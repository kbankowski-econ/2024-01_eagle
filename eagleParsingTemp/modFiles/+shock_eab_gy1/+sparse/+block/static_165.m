function [y, T, residual, g1] = static_165(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1553)=params(627)*(y(2179)/T(193))^params(632);
  residual(1)=(y(2215))-((1-params(627))*(y(2247)/y(2246))^(-params(632))+y(2215)*T(1553));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1553);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
