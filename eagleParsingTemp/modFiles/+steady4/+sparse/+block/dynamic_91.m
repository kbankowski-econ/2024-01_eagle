function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4389)*y(4442))-(y(4390)*y(4443)+y(4392)*y(4444)+y(4394)*y(4445)+y(4396)*y(4446));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4389);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
