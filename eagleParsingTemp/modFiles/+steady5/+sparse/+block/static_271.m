function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3423)=params(303)*T(1675)^params(308);
  residual(1)=(y(1690))-((1-params(303))*(y(1723)/y(1722))^(-params(308))+y(1690)*T(3423));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(3423);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
