function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5808)*y(5861))-(y(5809)*y(5862)+y(5811)*y(5863)+y(5813)*y(5864)+y(5815)*y(5865));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5808);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
