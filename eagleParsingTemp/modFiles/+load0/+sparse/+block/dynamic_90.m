function [y, T, residual, g1] = dynamic_90(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5125)*y(5178))-(y(5126)*y(5179)+y(5128)*y(5180)+y(5130)*y(5181)+y(5132)*y(5182));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5125);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
