function [y, T, residual, g1] = static_351(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2450)*y(2503))-(y(2451)*y(2504)+y(2453)*y(2505)+y(2455)*y(2506)+y(2457)*y(2507));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2450);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
