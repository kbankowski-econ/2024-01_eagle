function [y, T, residual, g1] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1443)*y(1500))-(y(2387)*y(2411)*y(1410)*params(314)/params(56)+y(2134)*y(2158)*y(1409)*params(251)/params(56)+y(1628)*y(1652)*y(1407)*params(120)/params(56)+y(1881)*y(1905)*y(1408)*params(184)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1443);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
