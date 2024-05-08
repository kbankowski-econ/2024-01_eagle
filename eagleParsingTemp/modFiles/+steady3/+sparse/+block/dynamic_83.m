function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2692)*y(2745))-(y(2693)*y(2746)+y(2695)*y(2747)+y(2697)*y(2748)+y(2699)*y(2749));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2692);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
