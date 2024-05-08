function [y, T, residual, g1] = dynamic_126(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4919)*y(4967))-(y(4920)*y(4968)+y(4921)*y(4969)+y(4922)*y(4970)+y(4923)*y(4971));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4919);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
