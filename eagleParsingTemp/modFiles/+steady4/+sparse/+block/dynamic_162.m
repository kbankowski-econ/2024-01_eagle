function [y, T, residual, g1] = dynamic_162(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(8849)*y(8902))-(y(8850)*y(8903)+y(8852)*y(8904)+y(8854)*y(8905)+y(8856)*y(8906));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(8849);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
