classdef ind2subarrayTest < matlab.unittest.TestCase
    % ind2subarrayTest 
    % tests can be run via
    %   >> ind2subarrayTests = matlab.unittest.TestSuite.fromClass(?ind2subarrayTest);
    %   >> result = run(ind2subarrayTests);
    
    methods (Test)
        function testInputOutputSolution(testCase)
            
            siz{1} = [1 19 1 1 2 1 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
            ndx{1} = 100;
            A{1} = [1 5 1 1 2 1 3 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
            
            siz{2} = [1 19 1 1 2 1 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
            ndx{2} = 1;
            A{2} = [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
            
            siz{3} = [1 19 1 1 2 1 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
            ndx{3} = 342;
            A{3} = [1 19 1 1 2 1 9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];

            for i = 1:length(siz)
                actSolution = ind2subarray(siz{i},ndx{i});
                expSolution = A{i};
                testCase.verifyEqual(actSolution,expSolution);
            end
            
        end
    end
    
end