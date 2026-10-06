% Facts to Logic - Medical Diagnosis

% Facts

fever(ram).
cough(ram).


% Rule:
% If a person has fever and cough, then the person has flu.

flu(X) :-
    fever(X),
    cough(X).


% Rule:
% If a person has flu, then the person has a disease.

disease(X) :-
    flu(X).


% Consultation rule

consults(X, doctor) :-
    disease(X).


% Diagnosis rule

diagnoses(doctor, X, flu) :-
    flu(X).