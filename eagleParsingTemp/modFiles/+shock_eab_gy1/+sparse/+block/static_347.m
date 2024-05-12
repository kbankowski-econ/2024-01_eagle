function [y, T, residual, g1] = static_347(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2965)*y(3018))-(y(2966)*y(3019)+y(2968)*y(3020)+y(2970)*y(3021)+y(2972)*y(3022));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2965);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
