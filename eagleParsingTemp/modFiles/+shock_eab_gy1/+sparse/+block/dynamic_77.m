function [y, T, residual, g1] = dynamic_77(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5243)*y(5296))-(y(5244)*y(5297)+y(5246)*y(5298)+y(5248)*y(5299)+y(5250)*y(5300));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5243);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
