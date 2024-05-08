function [y, T, residual, g1] = dynamic_169(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11344)*y(11397))-(y(11345)*y(11398)+y(11347)*y(11399)+y(11349)*y(11400)+y(11351)*y(11401));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11344);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
