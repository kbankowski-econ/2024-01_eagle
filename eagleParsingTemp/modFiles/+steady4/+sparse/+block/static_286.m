function [y, T, residual, g1] = static_286(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4984)*y(5037))-(y(4985)*y(5038)+y(4987)*y(5039)+y(4989)*y(5040)+y(4991)*y(5041));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4984);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
