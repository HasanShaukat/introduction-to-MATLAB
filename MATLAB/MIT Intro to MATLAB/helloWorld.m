%My first program in MATLAB MIT Open Course Ware
disp(['At the end of 6.094, I will know' num2str(knowledgeAtEnd*100) '% of MATLAB']);
secpermonth = 30.5 * secperday;
secperyear = 12 * secpermonth;
secondConversion = [secperyear secpermonth secperday secperhour secpermin 1]
currentTime = clock
elapsedTime = currentTime - start
t = secondConversion * elapsedTime'
currentKnowledge = 1-exp(-t/tau)