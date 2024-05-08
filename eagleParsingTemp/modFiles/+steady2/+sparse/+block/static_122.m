function [y, T, residual, g1] = static_122(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1080)=params(173)*(y(453)/T(470))^params(178);
  residual(1)=(y(491))-((1-params(173))*(y(523)/y(522))^(-params(178))+y(491)*T(1080));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(1080);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
