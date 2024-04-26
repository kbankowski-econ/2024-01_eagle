function [y, T, residual, g1] = static_400(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5340))-(y(5362)*log(y(5196)-y(5196)*params(720))-1/(1+params(768))*y(5264)^(1+params(768))+y(5340)*params(701));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-params(701);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
