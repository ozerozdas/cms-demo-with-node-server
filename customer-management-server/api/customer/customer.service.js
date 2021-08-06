const pool = require('../../config/database');

module.exports = {
    create: (data, callBack) => {
        pool.query(
            'insert into customer (full_name, email, password, birth_date) values (?, ?, ?, ?);', [
                data.full_name,
                data.email,
                data.password,
                data.birth_date
            ],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results);
            }
        );
    },
    getCustomers: callBack => {
        pool.query(
            'select full_name, email, password, birth_date, is_deleted from customer c',
            [],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results);
            }
        );
    },
    getCustomerById: (id, callBack) => {
        pool.query(
            'select full_name, email, password, birth_date, is_deleted from customer c where id = ?', [
                id
            ],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results[0]);
            }
        );
    },
    updateCustomer: (data, callBack) => {
        pool.query(
            'update customer c set full_name = ?, email = ?, password = ?, birth_date = ?, is_deleted = ? where id = ?', [
                data.full_name,
                data.email,
                data.password,
                data.birth_date,
                data.is_deleted,
                data.id
            ],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results[0]);
            }
        );
    },
    deleteCustomer: (data, callBack) => {
        pool.query(
            'delete from customer c where id = ?', [
                data.id
            ],
            (error, results, fields) => {
                if(error){
                    return callBack(error);
                }
                return callBack(null, results[0]);
            }
        );
    }
};