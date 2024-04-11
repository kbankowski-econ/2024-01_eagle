function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4085)*y(4018))-(y(5008)*T(1253)+y(4639)*params(457)*y(4699)*y(3974)/params(300)+y(4270)*params(377)*y(4330)*y(3973)/params(300)+y(3531)*params(223)*y(3591)*y(3972)/params(300)+y(2793)*params(69)*y(2853)*y(3970)/params(300)+y(3162)*params(146)*y(3222)*y(3971)/params(300));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4018);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
