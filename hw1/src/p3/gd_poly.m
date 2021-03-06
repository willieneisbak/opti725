function [Xs,fcn_vals] = gd_poly(fcn,grad_fcn,init_X,nb_steps)
    
    Xs(1,:) = init_X;
    fcn_vals(1) = fcn(Xs(1,1),Xs(1,2));
    for i=2:nb_steps
        Xs(i,:) = Xs(i-1,:) - (1/i)*grad_fcn(Xs(i-1,1),Xs(i-1,2));
        fcn_vals(i) = fcn(Xs(i,1),Xs(i,2));
    end

end
