function [y, T, residual, g1] = static_222(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2640)*y(2693))-(y(2641)*y(2694)+y(2643)*y(2695)+y(2645)*y(2696)+y(2647)*y(2697));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2640);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
