function [y, T, residual, g1] = dynamic_108(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5844)*y(5897))-(y(5845)*y(5898)+y(5847)*y(5899)+y(5849)*y(5900)+y(5851)*y(5901));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5844);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
