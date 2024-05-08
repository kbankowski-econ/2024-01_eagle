function [y, T, residual, g1] = dynamic_110(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3904)*y(3957))-(y(3905)*y(3958)+y(3907)*y(3959)+y(3909)*y(3960)+y(3911)*y(3961));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3904);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
