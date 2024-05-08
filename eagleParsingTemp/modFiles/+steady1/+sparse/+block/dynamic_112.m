function [y, T, residual, g1] = dynamic_112(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5420)*y(5473))-(y(5421)*y(5474)+y(5423)*y(5475)+y(5425)*y(5476)+y(5427)*y(5477));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5420);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
