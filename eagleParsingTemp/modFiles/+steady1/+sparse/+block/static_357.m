function [y, T, residual, g1] = static_357(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1149)*y(7883))-(y(351)*(-params(69))-params(146)*y(889)-params(223)*y(1427)-params(300)*y(1965)-params(377)*y(2503)-params(454)*y(3041)-params(531)*y(3579)-params(608)*y(4117)-params(685)*y(4655)-params(762)*y(5193)-params(839)*y(5731)-params(916)*y(6269)-params(993)*y(6807)-params(1073)*y(7345));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(1149);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
