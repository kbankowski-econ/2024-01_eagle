function [y, T, residual, g1] = dynamic_193(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11543)*y(11591))-(y(11544)*y(11592)+y(11545)*y(11593)+y(11546)*y(11594)+y(11547)*y(11595));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11543);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
