package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mf4jcommons.core.beans.Scope;
import com.adeuza.movalysfwk.mf4jcommons.core.beans.ScopePolicy;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModelId;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseCategory;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;

/**
 * 
 */
@Scope(ScopePolicy.PROTOTYPE)
public interface VMReportDetailPanelType extends ItemViewModel<ExpenseType>, ItemViewModelId
//@non-generated-start[class-signature]
, AmountViewModel
//@non-generated-end
{

	//@non-generated-start[constants]
	//@non-generated-end

	/**
	 * getter method for description
	 * @return Stringvalue of description
	 */
	public String getDescription();

	/**
	 * setter method for description
	 * @param p_odescription the value to set
	 */
	public void setDescription(String p_odescription);

	/**
	 * getter method for category
	 * @return ExpenseCategoryvalue of category
	 */
	public ExpenseCategory getCategory();

	/**
	 * setter method for category
	 * @param p_ocategory the value to set
	 */
	public void setCategory(ExpenseCategory p_ocategory);

	/**
	 * getter method for amountMax
	 * @return Doublevalue of amountMax
	 */
	public Double getAmountMax();

	/**
	 * setter method for amountMax
	 * @param p_oamountMax the value to set
	 */
	public void setAmountMax(Double p_oamountMax);

	//@non-generated-start[methods]
	//@non-generated-end
}
