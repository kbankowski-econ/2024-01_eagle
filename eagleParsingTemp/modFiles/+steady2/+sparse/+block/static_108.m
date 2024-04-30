function [y, T, residual, g1] = static_108(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(759)=params(337)*T(557)^params(342);
  residual(1)=(y(957))-((1-params(337))*(y(988)/y(987))^(-params(342))+y(957)*T(759));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(759);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
