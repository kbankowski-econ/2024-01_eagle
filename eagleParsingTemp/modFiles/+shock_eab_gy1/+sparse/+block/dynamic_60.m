function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4571)*y(4624))-(y(4572)*y(4625)+y(4574)*y(4626)+y(4576)*y(4627)+y(4578)*y(4628));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4571);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
