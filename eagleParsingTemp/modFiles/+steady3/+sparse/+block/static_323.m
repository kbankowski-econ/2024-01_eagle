function [y, T, residual, g1] = static_323(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(5277)=params(1152)*(y(7966)/T(2680))^params(1157);
  residual(1)=(y(8002))-((1-params(1152))*(y(8034)/y(8033))^(-params(1157))+y(8002)*T(5277));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(5277);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
