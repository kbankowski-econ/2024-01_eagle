function [y, T, residual, g1] = dynamic_63(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3895)*y(3948))-(y(3896)*y(3949)+y(3898)*y(3950)+y(3900)*y(3951)+y(3902)*y(3952));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3895);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
