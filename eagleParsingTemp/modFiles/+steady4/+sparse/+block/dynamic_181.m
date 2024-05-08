function [y, T, residual, g1] = dynamic_181(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13466)*y(13519))-(y(13467)*y(13520)+y(13469)*y(13521)+y(13471)*y(13522)+y(13473)*y(13523));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13466);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
