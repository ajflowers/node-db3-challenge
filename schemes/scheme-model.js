const db = require('../data/dbConfig');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db.select().from('schemes');
}

function findById(id) {
    return db('schemes')
        .where({ id });
}

function findSteps(id) {
    return db('steps')
        .where({ scheme_id: id })
        .orderBy('step_number');
}

function add(scheme) {
    return db('schemes')
        .insert(scheme);
}

function update(changes, id) {
    return db('schemes')
    .where({ id })
    .update(changes);
}

function remove(id) {
    return db('schemes')
    .where({ id })
    .del();
}