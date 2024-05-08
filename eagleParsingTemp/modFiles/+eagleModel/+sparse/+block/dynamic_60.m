function [y, T, residual, g1] = dynamic_60(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5975)*y(6028))-(y(5976)*y(6029)+y(5978)*y(6030)+y(5980)*y(6031)+y(5982)*y(6032));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5975);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
