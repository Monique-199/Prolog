
symptom(john, fever).
symptom(john, cough).
symptom(susan, headache).
diagnosis(X, flu) :- symptom(X, fever), symptom(X, cough).
diagnosis(X, migraine) :- symptom(X, headache).
% Symptoms
symptom(fever).
symptom(headache).
symptom(chills).
symptom(sweating).
symptom(fatigue).
symptom(muscle_pain).
symptom(nausea).
symptom(vomiting).
symptom(diarrhea).

% Diagnostic criteria
diagnosis(malaria) :-
    symptom(fever),
    symptom(headache),
    symptom(chills),
    symptom(sweating).






