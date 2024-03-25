function [y, T] = dynamic_22(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(1950)=(1-params(190))*x(52)+params(190)*y(616)+x(64);
  y(2022)=(1-params(192))*x(53)+y(688)*params(192)+x(65);
  y(2023)=(1-params(193))*x(54)+y(689)*params(193)+x(66);
  y(2025)=(1-params(195))*x(55)+y(691)*params(195)+x(68);
  y(2027)=(1-params(197))*x(57)+y(693)*params(197)+x(70);
  y(2026)=(1-params(196))*x(56)+y(692)*params(196)+x(69);
  y(2045)=(1-params(199))*x(58)+params(199)*y(711)+x(72);
end
