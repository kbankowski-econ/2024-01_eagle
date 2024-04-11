function [y, T, residual, g1] = dynamic_87(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4461)*y(4394))-(y(5016)*T(1070)+y(4647)*T(1069)+y(3908)*params(300)*y(3968)*y(4349)/params(377)+y(3539)*params(223)*y(3599)*y(4348)/params(377)+y(2801)*params(69)*y(2861)*y(4346)/params(377)+y(3170)*params(146)*y(3230)*y(4347)/params(377));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(4394);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
