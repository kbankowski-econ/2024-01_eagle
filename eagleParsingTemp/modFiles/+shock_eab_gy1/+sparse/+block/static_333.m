function [y, T, residual, g1] = static_333(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5025)*y(5078))-(y(5026)*y(5079)+y(5028)*y(5080)+y(5030)*y(5081)+y(5032)*y(5082));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5025);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
