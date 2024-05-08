function [y, T, residual, g1] = static_273(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(761)*y(814))-(y(762)*y(815)+y(764)*y(816)+y(766)*y(817)+y(768)*y(818));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(761);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
