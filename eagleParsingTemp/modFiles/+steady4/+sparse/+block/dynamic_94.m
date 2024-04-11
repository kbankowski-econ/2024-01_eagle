function [y, T, residual, g1] = dynamic_94(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2918)*y(2985))-(y(5012)*y(5072)*y(2875)*params(533)/params(69)+y(4643)*y(4703)*y(2874)*params(457)/params(69)+y(4274)*T(1130)+y(3905)*T(1290)+y(3167)*T(1289)+y(3536)*y(3596)*y(2871)*params(223)/params(69));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
