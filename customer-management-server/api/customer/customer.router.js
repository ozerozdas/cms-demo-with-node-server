const { createCustomer, getCustomerById, getCustomers, updateCustomer, deleteCustomer } = require('./customer.controller');
const router = require('express').Router();

router.post('/', createCustomer);
router.get('/', getCustomers);
router.get('/:id', getCustomerById);
router.patch('/', updateCustomer);
router.delete('/', deleteCustomer);

module.exports = router;