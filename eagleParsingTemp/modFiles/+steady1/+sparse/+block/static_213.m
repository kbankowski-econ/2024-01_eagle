function [y, T, residual, g1] = static_213(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(54)=log(y(7516));
  residual(1)=(T(54))-((1-params(1070))*log(x(364))+T(54)*params(1070)+x(378));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(7516)-params(1070)*1/y(7516);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
