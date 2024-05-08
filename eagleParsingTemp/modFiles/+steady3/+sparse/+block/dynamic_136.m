function [y, T, residual, g1] = dynamic_136(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(7506)*y(7559))-(y(7507)*y(7560)+y(7509)*y(7561)+y(7511)*y(7562)+y(7513)*y(7563));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(7506);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
