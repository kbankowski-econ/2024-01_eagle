function [y, T, residual, g1] = static_287(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2962)*y(3010))-(y(2963)*y(3011)+y(2964)*y(3012)+y(2965)*y(3013)+y(2966)*y(3014));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2962);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
