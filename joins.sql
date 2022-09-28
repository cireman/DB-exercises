--1: Seleccionar todos los registros de usuarios con las siguientes columnas (id, first_name, last_name, email) y obtener las cuentas sin importar si tiene o no cuentas creadas en el banco y mostrar las columnas de (account_no y balance). 

create view v_clients_accounts as select c.id as id_client, first_name as firstname, last_name as lastname, email, account_no as account, balance from clients as c left join accounts as a on c.id = a.id;

--2: Seleccionar todas las cuentas y el tipo de cuenta al que corresponde el registro de cuenta. 

create view v_accounts_types as select a.id as id_client, account_no as account, at2.name as account_type from accounts a inner join account_types at2 on a.id = at2.id;

--3: Selecciona todas las transacciones realizadas, su monto y el tipo de transacción.

create view v_transactions_detail as select t.id as transac_tion, amount, tt.name as transaction_type from transactions t inner join transactions_types tt on t.id = tt.id;

--4: Selecciona todos los tipos de transacciones  y  que coincidan con todas las transacciones realizadas, y su monto. 

create view v_transations_types_detail as select t.id as transac_tion, amount, tt.name as transaction_type from transactions t right join transactions_types tt on t.id = tt.id;
