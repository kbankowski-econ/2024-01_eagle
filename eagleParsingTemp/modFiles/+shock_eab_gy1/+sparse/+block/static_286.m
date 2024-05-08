function [y, T, residual, g1] = static_286(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4208)=params(1154)*(y(5523)/T(412))^params(1159);
  residual(1)=(y(5561))-((1-params(1154))*(y(5594)/y(5593))^(-params(1159))+y(5561)*T(4208));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4208);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
