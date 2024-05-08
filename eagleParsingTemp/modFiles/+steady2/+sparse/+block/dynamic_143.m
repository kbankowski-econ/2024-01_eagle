function [y, T, residual, g1] = dynamic_143(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5637)*y(5685))-(y(5638)*y(5686)+y(5639)*y(5687)+y(5640)*y(5688)+y(5641)*y(5689));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5637);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
