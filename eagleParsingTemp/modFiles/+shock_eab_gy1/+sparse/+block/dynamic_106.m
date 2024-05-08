function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1139)*y(10748))-(y(5875)*(-params(70))-params(167)*y(6318)-params(264)*y(6761)-params(361)*y(7204)-params(458)*y(7647)-params(555)*y(8090)-params(652)*y(8533)-params(749)*y(8976)-params(846)*y(9419)-params(943)*y(9862)-params(1043)*y(10305));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1139);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
