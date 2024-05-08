function [y, T, residual, g1] = dynamic_165(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11141)*y(11194))-(y(11142)*y(11195)+y(11144)*y(11196)+y(11146)*y(11197)+y(11148)*y(11198));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11141);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
