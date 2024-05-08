function [y, T, residual, g1] = dynamic_160(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10827)*y(10875))-(y(10828)*y(10876)+y(10829)*y(10877)+y(10830)*y(10878)+y(10831)*y(10879));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10827);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
