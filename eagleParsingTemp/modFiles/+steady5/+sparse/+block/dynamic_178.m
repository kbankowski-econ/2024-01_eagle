function [y, T, residual, g1] = dynamic_178(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7823)*y(7875))-(y(7824)*y(7876)+y(7826)*y(7877)+y(7828)*y(7878)+y(7830)*y(7879));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7823);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
