function [y, T, residual, g1] = dynamic_215(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(15430)*y(15478))-(y(15431)*y(15479)+y(15432)*y(15480)+y(15433)*y(15481)+y(15434)*y(15482));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(15430);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
