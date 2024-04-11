function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5191)*y(5125))-(y(4641)*params(457)*y(4701)*y(5082)/params(533)+y(4272)*T(841)+y(3903)*params(300)*y(3963)*y(5080)/params(533)+y(3534)*params(223)*y(3594)*y(5079)/params(533)+y(2796)*params(69)*y(2856)*y(5077)/params(533)+y(3165)*params(146)*y(3225)*y(5078)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5125);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
