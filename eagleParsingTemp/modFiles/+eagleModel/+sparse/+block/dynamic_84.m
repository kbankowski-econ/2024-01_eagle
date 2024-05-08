function [y, T, residual, g1] = dynamic_84(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7627)*y(7680))-(y(7628)*y(7681)+y(7630)*y(7682)+y(7632)*y(7683)+y(7634)*y(7684));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7627);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
