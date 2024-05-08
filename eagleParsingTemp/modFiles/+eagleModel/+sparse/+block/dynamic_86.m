function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10389)*y(10442))-(y(10390)*y(10443)+y(10392)*y(10444)+y(10394)*y(10445)+y(10396)*y(10446));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10389);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
