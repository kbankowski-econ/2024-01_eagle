function [y, T, residual, g1] = dynamic_93(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3037)*y(3090))-(y(3038)*y(3091)+y(3040)*y(3092)+y(3042)*y(3093)+y(3044)*y(3094));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3037);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
