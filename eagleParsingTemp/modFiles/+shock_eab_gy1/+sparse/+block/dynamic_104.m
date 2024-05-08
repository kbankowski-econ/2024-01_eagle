function [y, T, residual, g1] = dynamic_104(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12479)*y(12532))-(y(12480)*y(12533)+y(12482)*y(12534)+y(12484)*y(12535)+y(12486)*y(12536));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12479);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
