function [y, T, residual, g1] = static_318(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1732))-(y(1753)*log(y(1594)-y(1594)*params(439))-1/(1+params(482))*y(1656)^(1+params(482))+y(1732)*params(422));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(422);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
