function [y, T, residual, g1] = dynamic_83(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5153)*y(5206))-(y(5154)*y(5207)+y(5156)*y(5208)+y(5158)*y(5209)+y(5160)*y(5210));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5153);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
