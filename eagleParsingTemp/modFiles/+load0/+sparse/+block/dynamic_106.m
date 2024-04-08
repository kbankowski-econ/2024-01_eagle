function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(533)*y(5086))-(y(2872)*(-params(69))-params(146)*y(3241)-params(223)*y(3610)-params(300)*y(3979));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(533);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
