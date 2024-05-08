function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5250)*y(5298))-(y(5251)*y(5299)+y(5252)*y(5300)+y(5253)*y(5301)+y(5254)*y(5302));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5250);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
