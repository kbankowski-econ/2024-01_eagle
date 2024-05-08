function [y, T, residual, g1] = dynamic_173(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11821)*y(11873))-(y(11822)*y(11874)+y(11824)*y(11875)+y(11826)*y(11876)+y(11828)*y(11877));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11821);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
