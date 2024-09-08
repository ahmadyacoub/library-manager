import MySQLdb

class BookBuy : 

    def __init__(self,buy_date,book_copy,mem_id,emp_id,book_price) : 
        self.buy_date = buy_date
        self.book_copy =book_copy
        self.mem_id = mem_id
        self.emp_id = emp_id
        self.book_price = book_price

    def inser_new_sale(self,cursor,db) : 
        cursor.execute(f'''
        INSERT INTO book_buy(buy_date,book_copy,mem_id,emp_id,book_price) 
        VALUES ('{self.buy_date}','{self.book_copy}','{self.mem_id}',
            {self.emp_id},{self.book_price});
        '''
        )
        db.commit()
        print(f'Done added')



    @classmethod
    def sales_count(cls,cursor,db) :
        cursor.execute('''
            SELECT COUNT(*)
            FROM book_buy;
        ''')

        data = cursor.fetchall()
        if len(data) != 0 :
            buy_count = data[0][0]
        else : 
            buy_count = 0
        return buy_count
    
    @classmethod
    def return_all_sales(cls,cursor,db) : 
        cursor.execute('''
            SELECT * 
            FROM book_buy
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_mem_sales(cls,cursor,db,mem_id) : 
        cursor.execute(f'''
            SELECT * 
            FROM book_buy y
            WHERE y.mem_id = {mem_id};
        ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def return_bdate_sales(cls,cursor,db,buy_date) : 
        cursor.execute(f'''
            SELECT * 
            FROM book_buy y
            WHERE y.buy_date = '{buy_date}';
        ''')
        data = cursor.fetchall()
        return data
    
    
    @classmethod
    def return_book_sales(cls,cursor,db,book_code) : 
        cursor.execute(f'''
            SELECT s.buy_no,s.buy_date,s.book_copy,s.mem_id,s.emp_id,s.book_price
            FROM book_buy s,Book b , book_copy c 
            WHERE b.book_code = {book_code} and
	              b.book_code =  c.book_code and 
	              c.copy_no = s.book_copy;
            ''')
        data = cursor.fetchall()
        return data
    
    @classmethod
    def get_overall_sale(cls,cursor,db,buy_date) : 
        cursor.execute(f'''
            SELECT SUM(y.book_price)
            FROM book_buy y 
            WHERE  y.buy_date = '{buy_date}';
            ''')
        data = cursor.fetchall()
        return data[0][0]