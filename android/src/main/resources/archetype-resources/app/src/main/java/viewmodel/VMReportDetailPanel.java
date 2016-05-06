package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mf4jcommons.core.beans.Scope;
import com.adeuza.movalysfwk.mf4jcommons.core.beans.ScopePolicy;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModelId;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ListViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.UpdatableFromDataloader;
import com.soprasteria.mdk.handson.myexpenses.model.Customer;
import com.soprasteria.mdk.handson.myexpenses.model.Expense;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;
import com.soprasteria.mdk.handson.myexpenses.model.Report;

import java.sql.Date;

/**
 * 
 */
@Scope(ScopePolicy.SINGLETON)
public interface VMReportDetailPanel extends ItemViewModel<Report>, UpdatableFromDataloader, ItemViewModelId
//@non-generated-start[class-signature]
, AmountViewModel
//@non-generated-end
{

	//@non-generated-start[constants]
	//@non-generated-end

	/**
	 * getter method for 
	 * @return VMReportDetailPanelCustomervalue of 
	 */
	public VMReportDetailPanelCustomer getVMReportDetailPanelCustomer();

	/**
	 * setter method for 
	 * @param p_oVMReportDetailPanelCustomer the value to set
	 */
	public void setVMReportDetailPanelCustomer(VMReportDetailPanelCustomer p_oVMReportDetailPanelCustomer);

	/**
	 * getter method for 
	 * @return ListViewModelvalue of 
	 */
	public ListViewModel<Customer, VMReportDetailPanelCustomer> getLstVMReportDetailPanelCustomer();

	/**
	 * setter method for 
	 * @param p_oVMReportDetailPanelCustomer the value to set
	 */
	public void setLstVMReportDetailPanelCustomer(ListViewModel<Customer, VMReportDetailPanelCustomer> p_oVMReportDetailPanelCustomer);

	/**
	 * getter method for date
	 * @return Datevalue of date
	 */
	public Date getDate();

	/**
	 * setter method for date
	 * @param p_odate the value to set
	 */
	public void setDate(Date p_odate);

	/**
	 * getter method for reason
	 * @return Stringvalue of reason
	 */
	public String getReason();

	/**
	 * setter method for reason
	 * @param p_oreason the value to set
	 */
	public void setReason(String p_oreason);

	/**
	 * getter method for amountTotal
	 * @return Doublevalue of amountTotal
	 */
	public Double getAmountTotal();

	/**
	 * setter method for amountTotal
	 * @param p_oamountTotal the value to set
	 */
	public void setAmountTotal(Double p_oamountTotal);

	/**
	 * getter method for 
	 * @return ListViewModelvalue of 
	 */
	public ListViewModel<Expense, VMReportDetailPanelExpenses> getLstVMReportDetailPanelExpenses();

	/**
	 * setter method for 
	 * @param p_oVMReportDetailPanelExpenses the value to set
	 */
	public void setLstVMReportDetailPanelExpenses(ListViewModel<Expense, VMReportDetailPanelExpenses> p_oVMReportDetailPanelExpenses);

	/**
	 * getter method for 
	 * @return ListViewModelvalue of 
	 */
	public ListViewModel<ExpenseType, VMReportDetailPanelType> getLstVMReportDetailPanelType();

	/**
	 * setter method for 
	 * @param p_oVMReportDetailPanelType the value to set
	 */
	public void setLstVMReportDetailPanelType(ListViewModel<ExpenseType, VMReportDetailPanelType> p_oVMReportDetailPanelType);

	//@non-generated-start[methods]
	//@non-generated-end
}
