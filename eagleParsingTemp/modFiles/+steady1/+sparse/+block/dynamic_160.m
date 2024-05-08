function [y, T, residual, g1] = dynamic_160(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13909)*y(13962))-(y(13910)*y(13963)+y(13912)*y(13964)+y(13914)*y(13965)+y(13916)*y(13966));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13909);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
