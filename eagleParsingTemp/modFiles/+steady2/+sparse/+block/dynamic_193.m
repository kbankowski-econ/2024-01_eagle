function [y, T, residual, g1] = dynamic_193(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13284)*y(13332))-(y(13285)*y(13333)+y(13286)*y(13334)+y(13287)*y(13335)+y(13288)*y(13336));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13284);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
