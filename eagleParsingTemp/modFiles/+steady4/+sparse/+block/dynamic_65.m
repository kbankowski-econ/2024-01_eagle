function [y, T, residual, g1] = dynamic_65(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(1973)*y(2026))-(y(1974)*y(2027)+y(1976)*y(2028)+y(1978)*y(2029)+y(1980)*y(2030));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(1973);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
