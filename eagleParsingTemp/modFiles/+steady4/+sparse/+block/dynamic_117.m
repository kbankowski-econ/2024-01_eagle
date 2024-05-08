function [y, T, residual, g1] = dynamic_117(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5008)*y(5061))-(y(5009)*y(5062)+y(5011)*y(5063)+y(5013)*y(5064)+y(5015)*y(5065));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5008);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
