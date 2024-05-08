function [y, T, residual, g1] = dynamic_76(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8093)*y(8146))-(y(8094)*y(8147)+y(8096)*y(8148)+y(8098)*y(8149)+y(8100)*y(8150));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8093);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
