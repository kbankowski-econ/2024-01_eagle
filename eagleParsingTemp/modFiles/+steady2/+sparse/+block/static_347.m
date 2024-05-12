function [y, T, residual, g1] = static_347(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(338)*y(386))-(y(339)*y(387)+y(340)*y(388)+y(341)*y(389)+y(342)*y(390));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(338);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
