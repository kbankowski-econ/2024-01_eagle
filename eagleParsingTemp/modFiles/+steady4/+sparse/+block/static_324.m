function [y, T, residual, g1] = static_324(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4157)*y(4210))-(y(4158)*y(4211)+y(4160)*y(4212)+y(4162)*y(4213)+y(4164)*y(4214));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4157);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
