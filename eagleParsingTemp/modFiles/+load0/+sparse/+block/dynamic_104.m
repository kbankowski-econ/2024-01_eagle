function [y, T, residual, g1] = dynamic_104(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5419)*y(5472))-(y(5420)*y(5473)+y(5422)*y(5474)+y(5424)*y(5475)+y(5426)*y(5476));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5419);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
