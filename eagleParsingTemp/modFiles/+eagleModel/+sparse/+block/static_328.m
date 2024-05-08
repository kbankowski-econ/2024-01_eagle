function [y, T, residual, g1] = static_328(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2821)*y(2874))-(y(2822)*y(2875)+y(2824)*y(2876)+y(2826)*y(2877)+y(2828)*y(2878));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2821);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
