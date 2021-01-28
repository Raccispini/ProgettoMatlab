classdef Argument
    properties
        Categoria
        Anno
        Quartilio
    end
    methods
        function obj = argument(categoria,anno,quartilio)
            Categoria = categoria;
            Anno = anno;
            Quartilio = quartilio;
        end
    end
end