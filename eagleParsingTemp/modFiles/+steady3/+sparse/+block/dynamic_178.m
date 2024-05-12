function [y, T, residual, g1] = dynamic_178(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(9816)*y(9869))-(y(9817)*y(9870)+y(9819)*y(9871)+y(9821)*y(9872)+y(9823)*y(9873));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(9816);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
