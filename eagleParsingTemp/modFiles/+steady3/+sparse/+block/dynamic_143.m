function [y, T, residual, g1] = dynamic_143(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5411)*y(5464))-(y(5412)*y(5465)+y(5414)*y(5466)+y(5416)*y(5467)+y(5418)*y(5468));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5411);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
