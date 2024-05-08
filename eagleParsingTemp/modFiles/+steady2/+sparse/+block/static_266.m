function [y, T, residual, g1] = static_266(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3742)=params(867)*T(2195)^params(872);
  residual(1)=(y(2982))-((1-params(867))*(y(3014)/y(3013))^(-params(872))+y(2982)*T(3742));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3742);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
