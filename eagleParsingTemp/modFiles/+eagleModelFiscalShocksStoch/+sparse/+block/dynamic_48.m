function [y, T, residual, g1] = dynamic_48(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  residual(1)=(y(3614)*y(3547))-(y(4845)*params(624)*y(4905)*y(3504)/params(254)+y(4491)*params(533)*y(4551)*y(3503)/params(254)+y(4137)*params(438)*y(4197)*y(3502)/params(254)+y(3783)*params(346)*y(3843)*y(3501)/params(254)+y(2720)*params(70)*y(2780)*y(3499)/params(254)+y(3074)*params(162)*y(3134)*y(3500)/params(254));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=y(3547);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
