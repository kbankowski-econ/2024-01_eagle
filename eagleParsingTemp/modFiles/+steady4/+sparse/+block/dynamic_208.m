function [y, T, residual, g1] = dynamic_208(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(params(1149)*y(16247))-(y(8715)*(-params(69))-params(146)*y(9253)-params(223)*y(9791)-params(300)*y(10329)-params(377)*y(10867)-params(454)*y(11405)-params(531)*y(11943)-params(608)*y(12481)-params(685)*y(13019)-params(762)*y(13557)-params(839)*y(14095)-params(916)*y(14633)-params(993)*y(15171)-params(1073)*y(15709));
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
