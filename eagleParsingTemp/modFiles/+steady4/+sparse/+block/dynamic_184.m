function [y, T, residual, g1] = dynamic_184(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11983)*y(12036))-(y(11984)*y(12037)+y(11986)*y(12038)+y(11988)*y(12039)+y(11990)*y(12040));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11983);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
