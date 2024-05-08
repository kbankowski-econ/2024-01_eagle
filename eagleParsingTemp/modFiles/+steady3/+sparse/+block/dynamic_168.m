function [y, T, residual, g1] = dynamic_168(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11808)*y(11861))-(y(11809)*y(11862)+y(11811)*y(11863)+y(11813)*y(11864)+y(11815)*y(11865));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11808);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
