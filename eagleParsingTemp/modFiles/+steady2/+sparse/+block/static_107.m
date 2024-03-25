function [y, T, residual, g1] = static_107(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(650)*y(596))-(y(1031)*params(349)*y(1049)*y(564)/params(205)+y(784)*params(279)*y(802)*y(563)/params(205)+y(42)*params(63)*y(60)*y(561)/params(205)+y(289)*params(134)*y(307)*y(562)/params(205));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(596);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
