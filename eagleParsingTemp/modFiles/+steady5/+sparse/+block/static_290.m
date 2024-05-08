function [y, T, residual, g1] = static_290(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4471)*y(4523))-(y(4472)*y(4524)+y(4474)*y(4525)+y(4476)*y(4526)+y(4478)*y(4527));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4471);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
