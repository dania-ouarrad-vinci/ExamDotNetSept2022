﻿using System;
using System.Collections.Generic;

namespace ExamSept2022Tout.Models;

public partial class OrderSubtotal
{
    public int OrderId { get; set; }

    public decimal? Subtotal { get; set; }
}
