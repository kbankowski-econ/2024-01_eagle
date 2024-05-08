function [y, T, residual, g1] = dynamic_91(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4719)*y(4772))-(y(4720)*y(4773)+y(4722)*y(4774)+y(4724)*y(4775)+y(4726)*y(4776));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4719);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
