function [y, T, residual, g1] = static_208(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1488)=params(257)*T(175)^params(262);
  residual(1)=(y(926))-((1-params(257))*(y(959)/y(958))^(-params(262))+y(926)*T(1488));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1488);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
