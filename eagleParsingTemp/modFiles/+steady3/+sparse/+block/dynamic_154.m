function [y, T, residual, g1] = dynamic_154(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(841)*y(9656))-(y(5276)*(-params(69))-params(146)*y(5714)-params(223)*y(6152)-params(300)*y(6590)-params(377)*y(7028)-params(454)*y(7466)-params(531)*y(7904)-params(608)*y(8342)-params(685)*y(8780)-params(765)*y(9218));
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
