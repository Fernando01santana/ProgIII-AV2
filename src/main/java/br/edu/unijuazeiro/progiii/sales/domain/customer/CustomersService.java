package br.edu.unijuazeiro.progiii.sales.domain.customer;

import br.edu.unijuazeiro.progiii.sales.exceptions.BusinessException;
import br.edu.unijuazeiro.progiii.sales.infrastructure.CustomersDB;
import java.util.List;
import javax.ejb.ApplicationException;
import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;


@ApplicationScoped
public class CustomersService {

    @Inject
    private CustomersDB customersDB;

    public void save(Customer customer)  {
        Customer found = this.customersDB.findByCpf(customer.getNumber());
        if (found != null) {
            throw new BusinessException("Contato já cadastrado");
        }
        this.customersDB.save(customer);
    }

    public Customer findById(String id) {
        return this.customersDB.findById(id);
    }

    public void update(Customer customer) {
        this.customersDB.update(customer);

    }

    public void delete(String id) {
        this.customersDB.delete(id);
    }

    public List<Customer> listAll() {
        return this.customersDB.listAll();
    }
}
