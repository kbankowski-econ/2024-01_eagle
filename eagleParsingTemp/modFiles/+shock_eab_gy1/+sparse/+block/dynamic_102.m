function [y, T, residual, g1] = dynamic_102(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11388)*y(11441))-(y(11389)*y(11442)+y(11391)*y(11443)+y(11393)*y(11444)+y(11395)*y(11445));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11388);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
