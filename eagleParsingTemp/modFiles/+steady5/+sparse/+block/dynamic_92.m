function [y, T, residual, g1] = dynamic_92(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(4460)*y(4394))-(y(5016)*params(533)*y(5076)*y(4351)/params(377)+y(4647)*params(457)*y(4707)*y(4350)/params(377)+y(3908)*params(300)*y(3968)*y(4349)/params(377)+y(3539)*T(1052)+y(2801)*params(69)*y(2861)*y(4346)/params(377)+y(3170)*T(1051));
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
