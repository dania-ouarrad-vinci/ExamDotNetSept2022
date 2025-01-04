using ExamSept2022Tout.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ExamSept2022Tout.ViewModels
{
    public class ProductModel
    {
        private readonly Product _monProduct;

        public Product MonProduct
        {
            get { return _monProduct; }
        }

  

        public ProductModel(Product current)
        {
            this._monProduct = current;
        }

   


        public String ProductName
        {
            get { return _monProduct.ProductName; }
            set
            {
                _monProduct.ProductName = value;
                MessageBox.Show("ProductName changed");
            }
        }   
     

        public int ProductId
        {
            get { return _monProduct.ProductId; }
        }
    
        public String ContactName
        {
            get { return _monProduct.Supplier.ContactName; }
        }
      
        public String QuantityPerUnit
        {
            get { return _monProduct.QuantityPerUnit; }
            set
            {
                _monProduct.QuantityPerUnit = value;
            }
        }
    }
}
