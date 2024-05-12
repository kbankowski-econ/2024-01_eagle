function [y, T, residual, g1] = static_332(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4226)*y(4274))-(y(4227)*y(4275)+y(4228)*y(4276)+y(4229)*y(4277)+y(4230)*y(4278));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4226);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
