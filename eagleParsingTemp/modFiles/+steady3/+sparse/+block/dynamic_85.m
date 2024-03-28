function [y, T, residual, g1] = dynamic_85(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2345)*y(2402))-(y(4043)*y(4079)*y(2302)*params(442)/params(56)+y(3744)*T(936)+y(3445)*T(772)+y(3146)*T(757)+y(2548)*y(2584)*y(2297)*params(120)/params(56)+y(2847)*y(2883)*y(2298)*params(184)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2345);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
