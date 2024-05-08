function [y, T, residual, g1] = dynamic_124(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(13881)*y(13934))-(y(13882)*y(13935)+y(13884)*y(13936)+y(13886)*y(13937)+y(13888)*y(13938));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(13881);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
