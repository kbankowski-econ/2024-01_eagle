function [y, T, residual, g1] = dynamic_107(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5451)*y(5504))-(y(5452)*y(5505)+y(5454)*y(5506)+y(5456)*y(5507)+y(5458)*y(5508));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5451);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
