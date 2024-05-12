function [y, T, residual, g1] = static_353(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8025))-(y(8047)*log(y(8168)-y(8168)*params(1106))-1/(1+params(1155))*y(7952)^(1+params(1155))+y(8025)*params(1090));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(1090);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
