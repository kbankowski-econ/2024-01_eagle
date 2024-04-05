function [y, T] = dynamic_52(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(2280)=params(540)/params(58)*y(3900)+params(461)/params(58)*y(3614)+params(378)/params(58)*y(3328)+params(298)/params(58)*y(3042)+params(138)/params(58)*y(2470)+params(218)/params(58)*y(2756);
  y(3996)=y(3619)*params(461)/params(540)+y(3333)*params(378)/params(540)+y(3047)*params(298)/params(540)+y(2761)*params(218)/params(540)+y(2189)*params(58)/params(540)+y(2475)*params(138)/params(540);
  y(3424)=y(3904)*params(540)/params(378)+y(3618)*params(461)/params(378)+y(3045)*params(298)/params(378)+y(2759)*params(218)/params(378)+y(2187)*params(58)/params(378)+y(2473)*params(138)/params(378);
end
