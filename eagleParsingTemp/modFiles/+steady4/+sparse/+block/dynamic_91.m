function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3682)*y(3622))-(y(4138)*params(477)*y(4174)*y(3575)/params(337)+y(3832)*params(409)*y(3868)*y(3574)/params(337)+y(3219)*params(268)*y(3255)*y(3573)/params(337)+y(2913)*T(1080)+y(2301)*params(61)*y(2337)*y(3570)/params(337)+y(2607)*params(130)*y(2643)*y(3571)/params(337));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3622);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
