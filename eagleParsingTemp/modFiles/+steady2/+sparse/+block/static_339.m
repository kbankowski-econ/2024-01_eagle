function [y, T, residual, g1] = static_339(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2282)*y(2330))-(y(2283)*y(2331)+y(2284)*y(2332)+y(2285)*y(2333)+y(2286)*y(2334));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2282);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
