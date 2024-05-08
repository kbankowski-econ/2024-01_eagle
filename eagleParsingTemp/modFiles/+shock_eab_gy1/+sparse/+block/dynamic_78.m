function [y, T, residual, g1] = dynamic_78(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4848)*y(4901))-(y(4849)*y(4902)+y(4851)*y(4903)+y(4853)*y(4904)+y(4855)*y(4905));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4848);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
