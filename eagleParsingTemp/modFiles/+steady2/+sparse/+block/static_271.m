function [y, T, residual, g1] = static_271(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1970)*y(2018))-(y(1971)*y(2019)+y(1972)*y(2020)+y(1973)*y(2021)+y(1974)*y(2022));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1970);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
