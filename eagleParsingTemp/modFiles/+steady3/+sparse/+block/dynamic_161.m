function [y, T, residual, g1] = dynamic_161(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13965)*y(14018))-(y(13966)*y(14019)+y(13968)*y(14020)+y(13970)*y(14021)+y(13972)*y(14022));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13965);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
