function [y, T, residual, g1] = dynamic_74(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5105)*y(5158))-(y(5106)*y(5159)+y(5108)*y(5160)+y(5110)*y(5161)+y(5112)*y(5162));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5105);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
