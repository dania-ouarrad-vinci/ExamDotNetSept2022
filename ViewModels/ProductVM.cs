using ExamSept2022Tout.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApplication1.ViewModels;

namespace ExamSept2022Tout.ViewModels
{
    public class ProductVM
    {
        private NorthwindContext dc = new NorthwindContext();

        private ProductModel _selectedProduct;
        private ObservableCollection<ProductModel> _ProductsList;
        private ObservableCollection<ProductSalesModel> _ProuctsSales;


        private DelegateCommand _updateCommand;

        public ObservableCollection<ProductModel> ProductsList
        {
            get
            {
                if (_ProductsList == null)
                {
                    _ProductsList = loadProduct();
                }

                return _ProductsList;

            }

        }

        private ObservableCollection<ProductModel> loadProduct()
        {
            ObservableCollection<ProductModel> localCollection = new ObservableCollection<ProductModel>();
            foreach (var item in dc.Products)
            {
                localCollection.Add(new ProductModel(item));

            }

            return localCollection;

        }

        public ObservableCollection<ProductSalesModel> ProductsSales
        {
            get
            {
                if (_ProuctsSales == null)
                {
                    _ProuctsSales = loadProductSales();
                }

                return _ProuctsSales;
            }
        }

        private ObservableCollection<ProductSalesModel> loadProductSales()
        {
            ObservableCollection<ProductSalesModel> localCollection = new ObservableCollection<ProductSalesModel>();

            // LINQ pour calculer les ventes totales par produit
            var totalSalesByProduct = dc.OrderDetails
                .GroupBy(od => od.ProductId)
                .Select(group => new
                {
                    ProductId = group.Key,
                    TotalSales = group.Sum(od => od.UnitPrice * od.Quantity)
                })
                .OrderBy(sales => sales.ProductId) // Trie par ProductId
                .ToList();

            // Ajout des résultats à la collection
            foreach (var sales in totalSalesByProduct)
            {
                localCollection.Add(new ProductSalesModel
                {
                    ProductId = sales.ProductId,
                    TotalSales = sales.TotalSales
                });
            }

            return localCollection;
        }



        public ProductModel SelectedProduct
        {
            get { return _selectedProduct; }
            set { _selectedProduct = value;  }

        }


        public DelegateCommand UpdateCommand
        {
            get { return _updateCommand = _updateCommand ?? new DelegateCommand(UpdateProduct); }
        }

   


        private void UpdateProduct()
        {
            Product verif = dc.Products.Where(e => e.ProductId == SelectedProduct.MonProduct.ProductId).SingleOrDefault();
            if (verif != null)
            {
                verif.ProductName = SelectedProduct.ProductName;
                verif.QuantityPerUnit = SelectedProduct.QuantityPerUnit;
                dc.SaveChanges();
                MessageBox.Show("Enregistrement en base de données fait");
            }

        }
    }
}
