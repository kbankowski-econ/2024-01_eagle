function [y, T, residual, g1] = static_315(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(995)*y(6159))-(y(303)*(-params(69))-params(146)*y(791)-params(223)*y(1279)-params(300)*y(1767)-params(377)*y(2255)-params(454)*y(2743)-params(531)*y(3231)-params(608)*y(3719)-params(685)*y(4207)-params(762)*y(4695)-params(839)*y(5183)-params(919)*y(5671));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(995);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
