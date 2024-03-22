function [y, T, residual, g1] = static_85(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(87)*y(144))-(y(723)*y(741)*y(59)*params(250)/params(56)+y(263)*y(281)*y(57)*params(120)/params(56)+y(493)*y(511)*y(58)*params(187)/params(56));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(87);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
