function [y, T, residual, g1] = static_286(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3776)=params(267)*(y(1248)/T(1689))^params(272);
  residual(1)=(y(1286))-((1-params(267))*(y(1319)/y(1318))^(-params(272))+y(1286)*T(3776));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3776);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
