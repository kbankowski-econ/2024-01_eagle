function [y, T, residual, g1] = dynamic_139(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(10739)*y(10791))-(y(10740)*y(10792)+y(10742)*y(10793)+y(10744)*y(10794)+y(10746)*y(10795));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(10739);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
