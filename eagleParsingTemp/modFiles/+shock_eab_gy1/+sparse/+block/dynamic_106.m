function [y, T, residual, g1] = dynamic_106(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11558)*y(11611))-(y(11559)*y(11612)+y(11561)*y(11613)+y(11563)*y(11614)+y(11565)*y(11615));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11558);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
