% Symptoms
symptom(fever).
symptom(chills).
symptom(night_sweats).
symptom(rash).
symptom(fatigue).
symptom(swollen_lymph_nodes).
symptom(sore_throat).
symptom(mouth_sores).
symptom(joint_pain).

% Diagnostic criteria
diagnosis(hiv) :-
    symptom(fever),
    symptom(night_sweats),
    symptom(swollen_lymph_nodes),
    symptom(fatigue),
    symptom(sore_throat),
    symptom(mouth_sores),
    symptom(joint_pain).
diagnose(Disease) :-
    symptom(Symptom1),
    symptom(Symptom2),
    diagnosis(Disease),
    call(Disease), % Call the diagnosis rule dynamically
    member(Symptom1, Disease),
    member(Symptom2, Disease).
diagnose(Disease):-
	symptom(Symptom1),
	symptom(Symptom2),
	symptom(Symptom3),
	call(Disease),
	member(Symptom1,Disease),
	member(Symptom2,Disease),
	member(Symptom3,Disease).
