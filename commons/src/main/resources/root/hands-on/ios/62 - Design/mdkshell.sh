#!/bin/bash

currentPath=$1
echo "Référencement des nouveaux fichiers dans le projet XCode : "
echo "   Utils"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/src/utils $currentPath/ios/myexpenses/src/utils/Color.h $currentPath/ios/myexpenses/src/utils/Color.m

echo "   Style"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/src/style $currentPath/ios/myexpenses/src/style/MDKDateTimeStyle.h $currentPath/ios/myexpenses/src/style/MDKDateTimeStyle.m $currentPath/ios/myexpenses/src/style/MDKFixedListStyle.h $currentPath/ios/myexpenses/src/style/MDKFixedListStyle.m

echo "   Controls"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/src/controls $currentPath/ios/myexpenses/src/controls/MHomeButton.h $currentPath/ios/myexpenses/src/controls/MHomeButton.m

echo "   Controller"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/src/controller $currentPath/ios/myexpenses/src/controller/MSplashScreenViewController.h $currentPath/ios/myexpenses/src/controller/MSplashScreenViewController.m $currentPath/ios/myexpenses/src/controller/MHomeViewController.h $currentPath/ios/myexpenses/src/controller/MHomeViewController.m

echo "   Cells"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/src/cells $currentPath/ios/myexpenses/src/cells/CustomerExpensePanelInfosCell.h $currentPath/ios/myexpenses/src/cells/CustomerExpensePanelInfosCell.m 

echo "   XIB"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/resources/xib/controls $currentPath/ios/myexpenses/resources/xib/controls/Column1DateTime.xib $currentPath/ios/myexpenses/resources/xib/controls/DateTimePicker.xib $currentPath/ios/myexpenses/resources/xib/controls/HomeListDateTime.xib 

echo "   Images : design"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/resources/img $currentPath/ios/myexpenses/resources/img/ab_logo.png $currentPath/ios/myexpenses/resources/img/NDF_welcombotom.png $currentPath/ios/myexpenses/resources/img/soprasteria.png


echo "   Images : enums types"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/resources/img/enums $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensecategory_car.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensecategory_hotel.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensecategory_meal.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensecategory_other.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensecategory_train.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensestate_amountnone.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensestate_amountok.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensestate_amountovermax.png $currentPath/ios/myexpenses/resources/img/enums/enum_mexpensestate_none.png $currentPath/ios/myexpenses/resources/img/enums/enum_mreportstate_accepted.png $currentPath/ios/myexpenses/resources/img/enums/enum_mreportstate_none.png $currentPath/ios/myexpenses/resources/img/enums/enum_mreportstate_refused.png $currentPath/ios/myexpenses/resources/img/enums/enum_mreportstate_pending.png 

echo "   Images : home screen buttons"
mfxcode addfile $currentPath/ios/myexpenses.xcodeproj myexpenses/resources/img/home $currentPath/ios/myexpenses/resources/img/home/NDF_aproposicon.png $currentPath/ios/myexpenses/resources/img/home/NDF_carneticon.png $currentPath/ios/myexpenses/resources/img/home/NDF_noteicon.png $currentPath/ios/myexpenses/resources/img/home/NDF-41.png $currentPath/ios/myexpenses/resources/img/home/NDF-42.png $currentPath/ios/myexpenses/resources/img/home/NDF-43.png $currentPath/ios/myexpenses/resources/img/home/NDF-44.png $currentPath/ios/myexpenses/resources/img/home/NDF-45.png $currentPath/ios/myexpenses/resources/img/home/NDF-46.png 

