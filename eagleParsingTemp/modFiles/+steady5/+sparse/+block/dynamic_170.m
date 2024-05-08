function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11201)*y(11253))-(y(11202)*y(11254)+y(11204)*y(11255)+y(11206)*y(11256)+y(11208)*y(11257));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11201);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
