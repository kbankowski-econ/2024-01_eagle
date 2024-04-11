function [y, T, residual, g1] = static_194(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(661))-(y(681)*log(y(523)-params(149)*y(523))-1/(1+params(192))*y(585)^(1+params(192))+params(132)*y(661));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(132);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
