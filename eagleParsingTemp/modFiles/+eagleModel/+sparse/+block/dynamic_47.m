function [y, T, residual, g1] = dynamic_47(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2075)*y(2128))-(y(2076)*y(2129)+y(2078)*y(2130)+y(2080)*y(2131)+y(2082)*y(2132));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2075);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
