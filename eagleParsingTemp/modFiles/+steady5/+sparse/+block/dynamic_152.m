function [y, T, residual, g1] = dynamic_152(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6109)*y(6161))-(y(6110)*y(6162)+y(6112)*y(6163)+y(6114)*y(6164)+y(6116)*y(6165));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6109);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
