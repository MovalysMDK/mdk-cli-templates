package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mf4jcommons.core.beans.Scope;
import com.adeuza.movalysfwk.mf4jcommons.core.beans.ScopePolicy;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModelId;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.MPhotoVO;
import com.soprasteria.mdk.handson.myexpenses.model.Expense;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseState;

/**
 * 
 */
@Scope(ScopePolicy.PROTOTYPE)
public interface VMReportDetailPanelExpenses extends ItemViewModel<Expense>, ItemViewModelId
//@non-generated-start[class-signature]
, AmountViewModel
//@non-generated-end
{

	//@non-generated-start[constants]
	//@non-generated-end

	/**
	 * getter method for 
	 * @return VMReportDetailPanelTypevalue of 
	 */
	public VMReportDetailPanelType getVMReportDetailPanelType();

	/**
	 * setter method for 
	 * @param p_oVMReportDetailPanelType the value to set
	 */
	public void setVMReportDetailPanelType(VMReportDetailPanelType p_oVMReportDetailPanelType);

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
	 * getter method for amount
	 * @return Doublevalue of amount
	 */
	public Double getAmount();

	/**
	 * setter method for amount
	 * @param p_oamount the value to set
	 */
	public void setAmount(Double p_oamount);

	/**
	 * getter method for photo
	 * @return MPhotoVOvalue of photo
	 */
	public MPhotoVO getPhoto();

	/**
	 * setter method for photo
	 * @param p_ophoto the value to set
	 */
	public void setPhoto(MPhotoVO p_ophoto);

	/**
	 * getter method for state
	 * @return ExpenseStatevalue of state
	 */
	public ExpenseState getState();

	/**
	 * setter method for state
	 * @param p_ostate the value to set
	 */
	public void setState(ExpenseState p_ostate);

	//@non-generated-start[methods]
	//@non-generated-end
}
