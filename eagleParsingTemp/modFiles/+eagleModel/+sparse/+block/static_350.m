function [y, T, residual, g1] = static_350(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1359)*y(6709))-(y(326)*(-params(70))-params(169)*y(817)-params(268)*y(1308)-params(367)*y(1799)-params(466)*y(2290)-params(565)*y(2781)-params(664)*y(3272)-params(763)*y(3763)-params(862)*y(4254)-params(961)*y(4745)-params(1060)*y(5236)-params(1159)*y(5727)-params(1261)*y(6218));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1359);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
