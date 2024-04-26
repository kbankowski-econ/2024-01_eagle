function [y, T, residual, g1] = static_243(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2808)*y(2861))-(y(2809)*y(2862)+y(2811)*y(2863)+y(2813)*y(2864)+y(2815)*y(2865));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2808);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
