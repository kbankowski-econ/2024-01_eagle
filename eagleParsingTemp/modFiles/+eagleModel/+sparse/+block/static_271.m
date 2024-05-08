function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4483)*y(4536))-(y(4484)*y(4537)+y(4486)*y(4538)+y(4488)*y(4539)+y(4490)*y(4540));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4483);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
