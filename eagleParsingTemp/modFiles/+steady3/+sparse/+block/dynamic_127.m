function [y, T, residual, g1] = dynamic_127(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5824)*y(5877))-(y(5825)*y(5878)+y(5827)*y(5879)+y(5829)*y(5880)+y(5831)*y(5881));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5824);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
