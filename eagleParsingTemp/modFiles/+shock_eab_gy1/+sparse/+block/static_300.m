function [y, T, residual, g1] = static_300(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5190)*y(5243))-(y(5191)*y(5244)+y(5193)*y(5245)+y(5195)*y(5246)+y(5197)*y(5247));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5190);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
