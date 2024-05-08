function [y, T, residual, g1] = static_267(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(841)*y(4635))-(y(255)*(-params(69))-params(146)*y(693)-params(223)*y(1131)-params(300)*y(1569)-params(377)*y(2007)-params(454)*y(2445)-params(531)*y(2883)-params(608)*y(3321)-params(685)*y(3759)-params(765)*y(4197));
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
