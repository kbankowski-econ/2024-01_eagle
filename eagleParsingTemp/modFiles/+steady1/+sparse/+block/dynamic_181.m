function [y, T, residual, g1] = dynamic_181(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(12984)*y(13037))-(y(12985)*y(13038)+y(12987)*y(13039)+y(12989)*y(13040)+y(12991)*y(13041));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(12984);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
