function [y, T, residual, g1] = dynamic_62(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4224)*y(4277))-(y(4225)*y(4278)+y(4227)*y(4279)+y(4229)*y(4280)+y(4231)*y(4281));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4224);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
