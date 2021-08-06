const { create, getCustomerById, getCustomers, updateCustomer, deleteCustomer } = require('./customer.service');
const { genSaltSync, hashSync } = require('bcrypt');

module.exports = {
    createCustomer: (req, res) => {
        const body = req.body;
        const salt = genSaltSync(10);
        body.password = hashSync(body.password, salt);
        create(body, (err, results) => {
            if(err){
                console.log(err);
                return res.status(500).json({
                    status: false,
                    message: 'Database connection error'
                });
            }
            return res.status(200).json({
                status: true,
                data: results
            });
        });
    },
    getCustomerById: (req, res) => {
        const id = req.params.id;
        getCustomerById(id, (err, results) => {
            if(err){
                console.log(err);
                return;
            }
            if(!results){
                return res.json({
                    status: false,
                    message: 'Record not found!'
                });
            }
            return res.json({
                status: true,
                data: results
            });
        });
    },
    getCustomers: (req, res) => {
        getCustomers((err, results) => {
            if(err){
                console.log(err);
                return;
            }
            return res.json({
                status: true,
                data: results
            });
        });
    },
    updateCustomer: (req, res) => {
        const body = req.body;
        const salt = genSaltSync(10);
        body.password = hashSync(body.password, salt);
        updateCustomer(body, (err, results) => {
            if(err){
                console.log(err);
                return res.status(500).json({
                    status: false,
                    message: 'Database connection error'
                });
            }
            return res.status(200).json({
                status: true,
                message: 'Update completed!'
            });
        });
    },
    deleteCustomer: (req, res) => {
        const data = req.body;
        deleteCustomer(data, (err, results) => {
            if(err){
                console.log(err);
                return;
            }
            if(!results){
                return res.json({
                    status: false,
                    message: 'Record not found!'
                });
            }
            return res.json({
                status: true,
                message: 'Delete completed!'
            });
        });
    }
}