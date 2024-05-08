function [y, T, residual, g1] = dynamic_146(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(5235)*y(5283))-(y(5236)*y(5284)+y(5237)*y(5285)+y(5238)*y(5286)+y(5239)*y(5287));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(5235);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
