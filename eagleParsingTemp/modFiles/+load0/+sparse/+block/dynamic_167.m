function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8828)*y(8881))-(y(8829)*y(8882)+y(8831)*y(8883)+y(8833)*y(8884)+y(8835)*y(8885));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8828);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
