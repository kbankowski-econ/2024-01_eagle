function [y, T, residual, g1] = dynamic_170(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(11400)*y(11453))-(y(11401)*y(11454)+y(11403)*y(11455)+y(11405)*y(11456)+y(11407)*y(11457));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(11400);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
