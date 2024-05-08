function [y, T, residual, g1] = static_336(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5767)*y(5820))-(y(5768)*y(5821)+y(5770)*y(5822)+y(5772)*y(5823)+y(5774)*y(5824));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5767);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
