function [y, T, residual, g1] = static_340(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2768)*y(2816))-(y(2769)*y(2817)+y(2770)*y(2818)+y(2771)*y(2819)+y(2772)*y(2820));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2768);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
