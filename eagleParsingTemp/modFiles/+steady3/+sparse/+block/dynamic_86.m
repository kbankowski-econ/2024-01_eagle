function [y, T] = dynamic_86(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(2203)=y(2692)*y(2745)/(y(2730)*y(2663)+y(2692)*y(2745));
  T(2204)=y(2730)*y(2663)/(y(2730)*y(2663)+y(2692)*y(2745));
  y(2637)=T(2203)*y(2649)+T(2204)*y(2643);
end
