function [y, T, residual, g1] = dynamic_167(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(918)*y(11162))-(y(6069)*(-params(69))-params(146)*y(6532)-params(223)*y(6995)-params(300)*y(7458)-params(377)*y(7921)-params(454)*y(8384)-params(531)*y(8847)-params(608)*y(9310)-params(685)*y(9773)-params(762)*y(10236)-params(842)*y(10699));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=params(918);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
