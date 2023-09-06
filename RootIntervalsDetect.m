function  [rootIntervals] = RootIntervalsDetect(leftEnd, rightEnd, sturmSequence)
%%%%%%%%���ַ�ȷ�����������䡣
rootIntervals = [];
[numRoots] = NumRootsSturm(leftEnd, rightEnd, sturmSequence);

if numRoots < 1
    rootIntervals = [];
elseif numRoots == 1
    rootIntervals = [rootIntervals; leftEnd, rightEnd];
elseif numRoots > 1
    %%%%����������
    a1 = leftEnd; b1 = leftEnd + (rightEnd-leftEnd)/2;
    a2 = leftEnd + (rightEnd-leftEnd)/2; b2 = rightEnd;
    o1 = RootIntervalsDetect(a1, b1, sturmSequence);
    rootIntervals = [rootIntervals; o1];
    o2 = RootIntervalsDetect(a2, b2, sturmSequence);
    rootIntervals = [rootIntervals; o2];
end
    
 
