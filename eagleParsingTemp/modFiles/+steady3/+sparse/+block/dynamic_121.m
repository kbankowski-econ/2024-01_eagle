function [y, T, residual, g1] = dynamic_121(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7476)*y(7529))-(y(7477)*y(7530)+y(7479)*y(7531)+y(7481)*y(7532)+y(7483)*y(7533));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7476);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
