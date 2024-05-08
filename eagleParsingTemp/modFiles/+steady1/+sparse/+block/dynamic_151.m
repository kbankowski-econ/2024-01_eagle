function [y, T, residual, g1] = dynamic_151(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(841)*y(9612))-(y(5232)*(-params(69))-params(146)*y(5670)-params(223)*y(6108)-params(300)*y(6546)-params(377)*y(6984)-params(454)*y(7422)-params(531)*y(7860)-params(608)*y(8298)-params(685)*y(8736)-params(765)*y(9174));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(841);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
