classdef Charge

    properties(Access = public)
        posx double;
        posy double;
        intensity double;
    end

    methods(Access = public)
        function obj = Charge(posx, posy, intensity)
            obj.posx = posx;
            obj.posy = posy;
            obj.intensity = intensity;
        end
        function draw(obj, app)
            hold(app.UIAxes, 'on');
            if obj.intensity > 0
                plot(app.UIAxes, obj.posx, obj.posy,"+", "Color","#FF0000", "MarkerSize",10);
                plot(app.UIAxes, obj.posx, obj.posy,"O", "Color","#FF0000", "MarkerSize",15);
            elseif obj.intensity < 0
                plot(app.UIAxes, obj.posx, obj.posy,"x", "Color","#0000FF", "MarkerSize",10);
                plot(app.UIAxes, obj.posx, obj.posy,"O", "Color","#0000FF", "MarkerSize",15);
            else
                plot(app.UIAxes, obj.posx, obj.posy,"d", "Color","#777777", "MarkerSize",10);
                plot(app.UIAxes, obj.posx, obj.posy,"O", "Color","#777777", "MarkerSize",15);
            end
            hold(app.UIAxes, 'off');
        end
    end     
end