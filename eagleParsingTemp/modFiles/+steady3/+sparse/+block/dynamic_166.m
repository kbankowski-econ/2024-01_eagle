function [y, T, residual, g1] = dynamic_166(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6928)*y(6981))-(y(6929)*y(6982)+y(6931)*y(6983)+y(6933)*y(6984)+y(6935)*y(6985));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6928);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
