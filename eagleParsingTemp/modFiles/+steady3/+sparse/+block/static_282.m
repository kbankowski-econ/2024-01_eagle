function [y, T, residual, g1] = static_282(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2783)*y(2836))-(y(2784)*y(2837)+y(2786)*y(2838)+y(2788)*y(2839)+y(2790)*y(2840));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2783);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
