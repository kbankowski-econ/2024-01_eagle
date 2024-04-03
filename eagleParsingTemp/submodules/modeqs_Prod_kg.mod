// Government capital accumulation:

@{co}_kg = (1-@{co}_deltag)*@{co}_kg(-1)+@{co}_ig(-1);

@#if co != countries[1] && co != countries[2] && co != countries[3] && co != countries[4] && co != countries[5]

// Production function tradable
@{co}_yst = @{co}_zt*@{co}_kg^@{co}_alphag*@{co}_kdt^@{co}_alphat*@{co}_ndt^(1-@{co}_alphat)-@{co}_psitbar;

// Production function nontradable
@{co}_ysn = @{co}_zn*@{co}_kg^@{co}_alphag*@{co}_kdn^@{co}_alphan*@{co}_ndn^(1-@{co}_alphan)-@{co}_psinbar;

// Real marginal cost tradable
@{co}_mct = 1/(@{co}_zt*@{co}_kg^@{co}_alphag*(@{co}_alphat)^(@{co}_alphat)*(1-@{co}_alphat)^(1-@{co}_alphat))*@{co}_rk^(@{co}_alphat)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphat);

// Real marginal cost nontradable
@{co}_mcn = 1/(@{co}_zn*@{co}_kg^@{co}_alphag*(@{co}_alphan)^(@{co}_alphan)*(1-@{co}_alphan)^(1-@{co}_alphan))*@{co}_rk^(@{co}_alphan)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphan);

@#else // co != countries[1] && co != countries[2]

// Production function tradable
@{co}_yst = @{ea}_z*@{co}_zt*@{co}_kg^@{co}_alphag*@{co}_kdt^@{co}_alphat*@{co}_ndt^(1-@{co}_alphat)-@{co}_psitbar;

// Production function nontradable
@{co}_ysn = @{ea}_z*@{co}_zn*@{co}_kg^@{co}_alphag*@{co}_kdn^@{co}_alphan*@{co}_ndn^(1-@{co}_alphan)-@{co}_psinbar;

// Real marginal cost tradable
@{co}_mct = 1/(@{ea}_z*@{co}_zt*@{co}_kg^@{co}_alphag*(@{co}_alphat)^(@{co}_alphat)*(1-@{co}_alphat)^(1-@{co}_alphat))*@{co}_rk^(@{co}_alphat)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphat);

// Real marginal cost nontradable
@{co}_mcn = 1/(@{ea}_z*@{co}_zn*@{co}_kg^@{co}_alphag*(@{co}_alphan)^(@{co}_alphan)*(1-@{co}_alphan)^(1-@{co}_alphan))*@{co}_rk^(@{co}_alphan)*((1+@{co}_tauwf)*@{co}_w)^(1-@{co}_alphan);

@#endif // co != countries[1] && co != countries[2]