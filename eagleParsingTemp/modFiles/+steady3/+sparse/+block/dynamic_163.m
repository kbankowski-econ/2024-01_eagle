function [y, T, residual, g1] = dynamic_163(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12939)*y(12992))-(y(12940)*y(12993)+y(12942)*y(12994)+y(12944)*y(12995)+y(12946)*y(12996));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12939);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
