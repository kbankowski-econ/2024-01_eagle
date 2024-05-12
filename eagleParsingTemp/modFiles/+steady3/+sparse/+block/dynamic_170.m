function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15734)*y(15787))-(y(15735)*y(15788)+y(15737)*y(15789)+y(15739)*y(15790)+y(15741)*y(15791));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15734);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
