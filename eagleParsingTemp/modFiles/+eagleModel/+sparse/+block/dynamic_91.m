function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9842)*y(9895))-(y(9843)*y(9896)+y(9845)*y(9897)+y(9847)*y(9898)+y(9849)*y(9899));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9842);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
