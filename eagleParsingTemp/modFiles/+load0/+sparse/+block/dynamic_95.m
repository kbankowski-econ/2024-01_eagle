function [y, T, residual, g1] = dynamic_95(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5163)*y(5097))-(y(4613)*params(457)*y(4673)*y(5054)/params(533)+y(4244)*params(377)*y(4304)*y(5053)/params(533)+y(3875)*T(497)+y(3506)*params(223)*y(3566)*y(5051)/params(533)+y(2768)*params(69)*y(2828)*y(5049)/params(533)+y(3137)*params(146)*y(3197)*y(5050)/params(533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5097);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
