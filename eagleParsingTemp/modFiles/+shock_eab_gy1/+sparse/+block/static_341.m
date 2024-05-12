function [y, T, residual, g1] = static_341(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3995)*y(4048))-(y(3996)*y(4049)+y(3998)*y(4050)+y(4000)*y(4051)+y(4002)*y(4052));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3995);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
