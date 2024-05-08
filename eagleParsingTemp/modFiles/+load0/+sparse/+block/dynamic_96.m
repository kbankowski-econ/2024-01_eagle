function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5056)*y(5109))-(y(5057)*y(5110)+y(5059)*y(5111)+y(5061)*y(5112)+y(5063)*y(5113));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5056);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
