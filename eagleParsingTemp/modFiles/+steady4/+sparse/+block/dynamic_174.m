function [y, T, residual, g1] = dynamic_174(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10388)*y(10441))-(y(10389)*y(10442)+y(10391)*y(10443)+y(10393)*y(10444)+y(10395)*y(10445));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10388);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
