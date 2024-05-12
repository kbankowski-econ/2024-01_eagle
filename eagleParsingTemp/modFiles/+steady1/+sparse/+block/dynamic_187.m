function [y, T, residual, g1] = dynamic_187(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11370)*y(11423))-(y(11371)*y(11424)+y(11373)*y(11425)+y(11375)*y(11426)+y(11377)*y(11427));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11370);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
