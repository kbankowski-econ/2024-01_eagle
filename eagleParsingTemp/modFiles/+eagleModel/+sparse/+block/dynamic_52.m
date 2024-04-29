function [y, T, residual, g1] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4200)*y(4253))-(y(4201)*y(4254)+y(4203)*y(4255)+y(4205)*y(4256)+y(4207)*y(4257));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4200);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
