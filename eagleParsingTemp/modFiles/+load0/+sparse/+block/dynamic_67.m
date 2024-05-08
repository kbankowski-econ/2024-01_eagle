function [y, T, residual, g1] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2811)*y(2864))-(y(2812)*y(2865)+y(2814)*y(2866)+y(2816)*y(2867)+y(2818)*y(2868));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2811);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
