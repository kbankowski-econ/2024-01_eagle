function [y, T, residual, g1] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10454)*y(10507))-(y(10455)*y(10508)+y(10457)*y(10509)+y(10459)*y(10510)+y(10461)*y(10511));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10454);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
