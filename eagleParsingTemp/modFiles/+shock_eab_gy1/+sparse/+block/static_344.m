function [y, T, residual, g1] = static_344(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4577)=params(955)*(y(4589)/T(816))^params(960);
  residual(1)=(y(4627))-((1-params(955))*(y(4660)/y(4659))^(-params(960))+y(4627)*T(4577));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-T(4577);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
