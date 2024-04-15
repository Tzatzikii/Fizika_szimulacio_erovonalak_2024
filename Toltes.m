classdef Toltes

        properties
                posx double;
                posy double;
                erosseg double;
        end

        methods
                function obj = Toltes(posx, posy, erosseg)
                        obj.posx = posx;
                        obj.posy = posy;
                        obj.erosseg = erosseg;
                 end
        end
end