function [y, T, residual, g1] = dynamic_96(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5096)*y(5149))-(y(5097)*y(5150)+y(5099)*y(5151)+y(5101)*y(5152)+y(5103)*y(5153));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5096);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
