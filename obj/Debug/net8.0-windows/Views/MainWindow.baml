   M S B A M L   `   `   `  ����K  GExamSept2022Tout, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ExamSept2022ToutExamSept2022Tout  5   	   !    ExamSept2022Tout.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:ExamSept2022Tout     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)    � 	Resources 5
         listboxTemplate �� Orientation  ReadOnlyTextBoxStyle �� 
TargetType �� Property �� Value  listboxSalesTemplate �� StringFormat��%(  &	        &	 �     &	 E    �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� *	ProductId+�� 5      ��6   �� *ProductName+5      5      �� 5   
   " ��6-   .�5      ��  � ��
 �����6+   �� 5       � �� �#F0F0F06+   �� 5       �@��
IsReadOnly$
 True��6+   5      �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� ��6   �� *	ProductId+�� 5      $	�� : ��6   �� 5      ��6   �� *
TotalSales+$ F2��5      5       5#      .��5%      �  � ColumnDefinitions 5&   
   �� 5'      $��1* �6   �� 5)      $��2* �6   �� 5+      $��1* �6   .+�50   
   �� -   5        $��lbxProducts��51      $��0��50      #��[  52   7   $��60,22,300,275q�54      $��2��6)   ��52      �� *ProductsList+ �� SelectedItem 53      �� *SelectedProduct+54   )   � 58   
   $��60,187,184,61q�6   $��2��6d   	 � DataContext	 6&   �� *SelectedItem+
 �� ElementName$
 lbxProducts�� 59      �� 5:      $
��Auto �6#   �� 5<      $��* �6#    � RowDefinitions 5?      �� 5@      $
��Auto �6    �� 5A      $
��Auto �6    �� 5B      $
��Auto �6    �� 5C      $
��Auto �6    �� 5D      $
��Auto �6    .+�5G      �� $��
ProductID:��6   $
��Bold"�6*   $��0��6<   $��0��6I   $��5q�6Y   �� 5H      #��[ 5I      $��0��5J      $��1��6#   $��5q�63   ��5H      �� *	ProductId+ �� Mode$ OneWay=�5J   3   �� 5L      $��ProductName:��6   $
��Bold"�6,   $��1��6>   $��0��6K   $��5q�6[   �� 5M      $��1��5N      $��1��6#   $��5q�63   ��5M      �� *ProductName+5N   3   �� 5P      $��SupplierContactName:��6   $
��Bold"�64   $��2��6F   $��0��6S   $��5q�6c   �� 5Q      #��[ 5R      $��2��5S      $��1��6#   $��5q�63   ��5Q      �� *ContactName+$ OneWay=�5S   3   �� 5U      $��QuantityPerUnit:��6   $
��Bold"�60   $��3��6B   $��0��6O   $��5q�6_   �� 5V      $��3��5W      $��1��6#   $��5q�63   ��5V      �� *QuantityPerUnit+5W   3   �� 5Z      $	��Maj��6   $	��100��6�   $��4��6�   $��1��6�   $
��Left=�6�   $��5q�6�   ��6#   �� *DataContext.UpdateCommand+ �� RelativeSource �� *FindAncestor+ �� AncestorType" �6�   5[      �� 5_   
   $��2��6   #��[ 5a      $��10q�5b      ��5`      �� *ProductsSales+5b      5c      5d      