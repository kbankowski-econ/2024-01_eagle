function [y, T, residual, g1] = dynamic_67(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(2511)*y(2455))-(y(2137)*params(251)*y(2161)*y(2422)/params(314)+y(1884)*params(184)*y(1908)*y(2421)/params(314)+y(1378)*params(56)*y(1402)*y(2419)/params(314)+y(1631)*params(120)*y(1655)*y(2420)/params(314));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(2455);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
