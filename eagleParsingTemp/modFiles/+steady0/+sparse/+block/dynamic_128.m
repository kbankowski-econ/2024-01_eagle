function [y, T, residual, g1] = dynamic_128(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(6148)*y(6201))-(y(6149)*y(6202)+y(6151)*y(6203)+y(6153)*y(6204)+y(6155)*y(6205));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(6148);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
