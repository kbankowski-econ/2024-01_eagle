function [y, T, residual, g1] = dynamic_89(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2701)*y(2644))-(y(4044)*T(752)+y(3745)*params(379)*y(3781)*y(2600)/params(120)+y(3446)*params(312)*y(3482)*y(2599)/params(120)+y(3147)*T(751)+y(2249)*params(56)*y(2285)*y(2596)/params(120)+y(2848)*params(184)*y(2884)*y(2597)/params(120));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2644);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
