function [y, T, residual, g1] = dynamic_119(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6660)*y(6712))-(y(6661)*y(6713)+y(6663)*y(6714)+y(6665)*y(6715)+y(6667)*y(6716));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6660);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
