function [y, T, residual, g1] = dynamic_163(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6008)*y(6056))-(y(6009)*y(6057)+y(6010)*y(6058)+y(6011)*y(6059)+y(6012)*y(6060));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6008);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
