function [y, T, residual, g1] = static_159(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(39)=log(y(3950));
  residual(1)=(T(39))-((1-params(922))*log(x(265))+T(39)*params(922)+x(280));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1/y(3950)-params(922)*1/y(3950);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
