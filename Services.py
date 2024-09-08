import MySQLdb

class Services  : 
    def __init__(self,rent_date,to_date,rent_status,book_copy, 
                    mem_id,emp_id) :
        self.rent_date = rent_date
        self.to_date = to_date
        self.rent_status  = rent_status
        self.book_copy = book_copy
        self.mem_id  = mem_id
        self.emp_id = emp_id

    def insert_new_service(self,cursor,db) :
        cursor.execute(f'''
        INSERT INTO services(rent_date,to_date,rent_status,book_copy,mem_id,emp_id) 
        VALUES ('{self.rent_date}','{self.to_date}','{self.rent_status}',
            {self.book_copy},{self.mem_id},{self.emp_id});
        '''
        )
        db.commit()
        print(f'Done added')

    @classmethod
    def return_all_services(cls,cursor,db) : 
        cursor.execute('''
            SELECT * 
            FROM services 
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def services_count(cls,cursor,db) :
        cursor.execute('''
            SELECT COUNT(*)
            FROM services;
        ''')

        data = cursor.fetchall()
        if len(data) != 0 :
            serv_count = data[0][0]
        else : 
            serv_count = 0
        return serv_count
    
    @classmethod
    def return_mem_services(cls,cursor,db,mem_id) : 
        cursor.execute(f'''
            SELECT * 
            FROM services s
            WHERE s.mem_id = {mem_id};
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_rdate_services(cls,cursor,db,rent_date) : 
        cursor.execute(f'''
            SELECT * 
            FROM services s
            WHERE s.rent_date = '{rent_date}';
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_tdate_services(cls,cursor,db,to_date) : 
        cursor.execute(f'''
            SELECT * 
            FROM services s
            WHERE s.to_date = '{to_date}';
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_book_services(cls,cursor,db,book_code) : 
        cursor.execute(f'''
            SELECT s.rent_no,s.rent_date,s.to_date,s.rent_status,
                       s.book_copy,s.mem_id,s.emp_id 
            FROM Services s,Book b , book_copy c 
            WHERE b.book_code = {book_code} and
	              b.book_code =  c.book_code and 
	              c.copy_no = s.book_copy;
            ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_rent_info(cls,cursor,db,rent_no)  :
        cursor.execute(f'''
            SELECT s.mem_id,s.book_copy
            FROM  services s
            WHERE s.rent_no = {rent_no};
            ''')
        data = cursor.fetchall()
        # print(data)
        return data

    @classmethod
    def return_book(cls,cursor,db,rent_no,return_date) : 
        cursor.execute(f'''
            SELECT s.rent_status 
            FROM services s
            WHERE s.rent_no = '{rent_no}';
        ''')
        d1 = cursor.fetchall()
        if d1[0][0] == 'Returned' :
            return False
        cursor.execute(f"""
        UPDATE services
        SET rent_status = 'Returned' , return_date = '{return_date}'
        WHERE rent_no = {rent_no};
        """)
        db.commit()
        return True
    



