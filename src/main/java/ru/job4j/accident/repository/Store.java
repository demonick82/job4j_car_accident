package ru.job4j.accident.repository;

import ru.job4j.accident.model.Accident;
import ru.job4j.accident.model.AccidentType;
import ru.job4j.accident.model.Rule;

import java.util.Collection;

public interface Store {
    Collection<Accident> findAllAccidents();

    void save(Accident accident);

    Accident findAccidentById(int id);

    Collection<AccidentType> findAllTypes();

    AccidentType findTypeById(int id);

    Collection<Rule> findAllRules();

    Rule findRuleById(int id);
}
