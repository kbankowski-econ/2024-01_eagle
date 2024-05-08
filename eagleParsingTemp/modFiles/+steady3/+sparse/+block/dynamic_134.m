function [y, T, residual, g1] = dynamic_134(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5754)*y(5807))-(y(5755)*y(5808)+y(5757)*y(5809)+y(5759)*y(5810)+y(5761)*y(5811));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5754);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
