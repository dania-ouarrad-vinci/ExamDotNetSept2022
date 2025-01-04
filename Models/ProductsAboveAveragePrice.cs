using System;
using System.Collections.Generic;

namespace ExamSept2022Tout.Models;

public partial class ProductsAboveAveragePrice
{
    public string ProductName { get; set; } = null!;

    public decimal? UnitPrice { get; set; }
}
