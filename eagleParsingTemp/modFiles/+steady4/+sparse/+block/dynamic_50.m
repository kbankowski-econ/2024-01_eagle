function [y, T, residual, g1] = dynamic_50(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1779)*y(1832))-(y(1780)*y(1833)+y(1782)*y(1834)+y(1784)*y(1835)+y(1786)*y(1836));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1779);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
