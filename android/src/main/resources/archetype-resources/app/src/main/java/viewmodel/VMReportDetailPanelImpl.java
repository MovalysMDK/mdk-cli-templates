package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mobile.mf4javacommons.dataloader.Dataloader;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.core.services.BeanLoader;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.core.services.ExtBeanType;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ListViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ListViewModelImpl;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.clonable.NonClonableViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.FixedListViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.ListenerOnCollectionModified;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.ListenerOnFieldModified;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.utils.DateUtils;
import com.soprasteria.mdk.handson.myexpenses.loader.MyExpensesScreenDetailLoader;
import com.soprasteria.mdk.handson.myexpenses.model.Customer;
import com.soprasteria.mdk.handson.myexpenses.model.CustomerFactory;
import com.soprasteria.mdk.handson.myexpenses.model.Expense;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseFactory;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;
import com.soprasteria.mdk.handson.myexpenses.model.Report;
import com.soprasteria.mdk.handson.myexpenses.model.ReportFactory;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.ViewModelCreator;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/**
 *
 */
public class VMReportDetailPanelImpl
//@non-generated-start[class-signature-extends]
        extends AbstractAmountViewModel<Report>
//@non-generated-end
        implements VMReportDetailPanel
//@non-generated-start[class-signature]
//@non-generated-end
{
    /**
     * Key used to identify the VMReportDetailPanelCustomer entity attribute
     */
    protected static final String KEY_VMREPORTDETAILPANELCUSTOMER = "VMReportDetailPanelCustomer";
    /**
     * Key used to identify the date attribute
     */
    protected static final String KEY_DATE = "date";
    /**
     * Key used to identify the reason attribute
     */
    protected static final String KEY_REASON = "reason";
    /**
     * Key used to identify the amountTotal attribute
     */
    protected static final String KEY_AMOUNTTOTAL = "amountTotal";
    /**
     * Key used to identify the lstVMReportDetailPanelExpenses entity attribute
     */
    protected static final String KEY_LSTVMREPORTDETAILPANELEXPENSES = "lstVMReportDetailPanelExpenses";

    /**
     * <p>Attribute </p>
     * <p> type=Date mandatory=false</p>
     */
    //@non-generated-start[attribute-date]
    //@non-generated-end[attribute-date]
    private Date date;

    /**
     * <p>Attribute </p>
     * <p> type=String mandatory=false</p>
     */
    //@non-generated-start[attribute-reason]
    //@non-generated-end[attribute-reason]
    private String reason;

    /**
     * <p>Attribute </p>
     * <p> type=Double mandatory=false</p>
     */
    //@non-generated-start[attribute-amountTotal]
    //@non-generated-end[attribute-amountTotal]
    private Double amountTotal;
    /**
     * selected element on combo
     */
    @NonClonableViewModel
    private VMReportDetailPanelCustomer oVMReportDetailPanelCustomer;

    /**
     * combo attribute
     */
    private ListViewModel<Customer, VMReportDetailPanelCustomer> lstVMReportDetailPanelCustomer = null;

    /**
     * fixedlist on Expense
     */
    //@non-generated-start[attribute-lstVMReportDetailPanelExpenses][X]
    @FixedListViewModel
    //@non-generated-end
    private ListViewModel<Expense, VMReportDetailPanelExpenses> lstVMReportDetailPanelExpenses;

    /**
     * combo attribute
     */
    private ListViewModel<ExpenseType, VMReportDetailPanelType> lstVMReportDetailPanelType;

    //@non-generated-start[attributes]
    //@non-generated-end

    /**
     * {@inheritDoc}
     */
    @Override
    public Date getDate() {
        return this.date;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setDate(Date p_oDate) {
        this.affectObjectAndNotify(this.date, p_oDate, KEY_DATE);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String getReason() {
        return this.reason;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setReason(String p_sReason) {
        this.affectObjectAndNotify(this.reason, p_sReason, KEY_REASON);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Double getAmountTotal() {
        return this.amountTotal;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setAmountTotal(Double p_dAmountTotal) {
        this.affectObjectAndNotify(this.amountTotal, p_dAmountTotal, KEY_AMOUNTTOTAL);
    }

    /**
     * Returns the combo selected item view model oVMReportDetailPanelCustomer
     *
     * @return the value of oVMReportDetailPanelCustomer
     */
    public VMReportDetailPanelCustomer getVMReportDetailPanelCustomer() {
        return this.oVMReportDetailPanelCustomer;
    }

    /**
     * returns the combo view model lstVMReportDetailPanelCustomer
     *
     * @return the value of lstVMReportDetailPanelCustomer
     */
    public ListViewModel<Customer, VMReportDetailPanelCustomer> getLstVMReportDetailPanelCustomer() {
        return this.lstVMReportDetailPanelCustomer;
    }

    /**
     * Returns the fixedlist view model lstVMReportDetailPanelExpenses
     *
     * @return the value of lstVMReportDetailPanelExpenses
     */
    public ListViewModel<Expense, VMReportDetailPanelExpenses> getLstVMReportDetailPanelExpenses() {
        return this.lstVMReportDetailPanelExpenses;
    }

    /**
     * returns the combo view model lstVMReportDetailPanelType
     *
     * @return the value of lstVMReportDetailPanelType
     */
    public ListViewModel<ExpenseType, VMReportDetailPanelType> getLstVMReportDetailPanelType() {
        return this.lstVMReportDetailPanelType;
    }

    /**
     * sets the combo selected item view model.
     *
     * @param p_oVMReportDetailPanelCustomer combo selected item view model
     */
    public void setVMReportDetailPanelCustomer(VMReportDetailPanelCustomer p_oVMReportDetailPanelCustomer) {
        if (this.oVMReportDetailPanelCustomer != p_oVMReportDetailPanelCustomer) {
            Object sOldVal = this.oVMReportDetailPanelCustomer;
            this.oVMReportDetailPanelCustomer = p_oVMReportDetailPanelCustomer;
            this.notifyFieldChanged(KEY_VMREPORTDETAILPANELCUSTOMER, sOldVal, p_oVMReportDetailPanelCustomer);
        }
    }

    /**
     * sets the combo view model.
     *
     * @param p_listVMReportDetailPanelCustomers combo view model
     */
    public void setLstVMReportDetailPanelCustomer(ListViewModel<Customer, VMReportDetailPanelCustomer> p_listVMReportDetailPanelCustomers) {
        this.lstVMReportDetailPanelCustomer = p_listVMReportDetailPanelCustomers;
    }

    /**
     * sets the fixedlist view model.
     *
     * @param p_lstVMReportDetailPanelExpenses fixedlist view model
     */
    public void setLstVMReportDetailPanelExpenses(ListViewModel<Expense, VMReportDetailPanelExpenses> p_lstVMReportDetailPanelExpenses) {
        if (this.lstVMReportDetailPanelExpenses != p_lstVMReportDetailPanelExpenses) {
            Object sOldVal = this.lstVMReportDetailPanelExpenses;
            this.lstVMReportDetailPanelExpenses = p_lstVMReportDetailPanelExpenses;
            this.notifyFieldChanged(KEY_LSTVMREPORTDETAILPANELEXPENSES, sOldVal, p_lstVMReportDetailPanelExpenses);
        }
    }

    /**
     * sets the combo view model.
     *
     * @param p_listVMReportDetailPanelTypes combo view model
     */
    public void setLstVMReportDetailPanelType(ListViewModel<ExpenseType, VMReportDetailPanelType> p_listVMReportDetailPanelTypes) {
        this.lstVMReportDetailPanelType = p_listVMReportDetailPanelTypes;
    }

    /**
     * {@inheritDoc}
     *
     * @see com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel#modifyToIdentifiable(com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable)
     */
    public void modifyToIdentifiable(Report p_oEntity) {
        //@non-generated-start[modifyToIdentifiable-before][X]
        //@non-generated-end
        if (p_oEntity != null) {
            p_oEntity.setId(this.id_id);
            p_oEntity.setDate(new Timestamp(this.date.getTime()));
            p_oEntity.setReason(this.reason);
            p_oEntity.setAmountTotal(this.amountTotal);
            if (this.oVMReportDetailPanelCustomer == null) {
                p_oEntity.setCustomer(null);
            } else {
                Customer oCustomer = BeanLoader.getInstance().getBean(CustomerFactory.class).createInstance();
                this.oVMReportDetailPanelCustomer.modifyToIdentifiable(oCustomer);
                p_oEntity.setCustomer(oCustomer);
            }
            if (this.lstVMReportDetailPanelExpenses != null) {
                List<Expense> listExpense2 = p_oEntity.getExpenses();
                Map<String, Expense> mapExpense2ById = new TreeMap<String, Expense>();
                if (listExpense2 == null) {
                    listExpense2 = new ArrayList<Expense>();
                    p_oEntity.setExpenses(listExpense2);
                } else {
                    for (Expense oExpense : listExpense2) {
                        mapExpense2ById.put(oExpense.idToString(), oExpense);
                    }
                    listExpense2.clear();
                }
                ExpenseFactory oFactory = BeanLoader.getInstance().getBean(ExpenseFactory.class);
                Expense oSubEntity = null;
                for (int iIndex = 0; iIndex < this.lstVMReportDetailPanelExpenses.getCount(); iIndex++) {
                    VMReportDetailPanelExpenses oVM = this.lstVMReportDetailPanelExpenses.getCacheVMByPosition(iIndex);
                    oSubEntity = mapExpense2ById.get(oVM.getIdVM());
                    if (oSubEntity == null) {
                        oSubEntity = oFactory.createInstance();
                    }
                    oVM.modifyToIdentifiable(oSubEntity);
                    listExpense2.add(oSubEntity);
                }
            }
            //@non-generated-start[modify-to-identifiable][X]
            //@non-generated-end
        }
        //@non-generated-start[modifyToIdentifiable-after][X]
        //@non-generated-end
    }

    /**
     * {@inheritDoc}
     *
     * @see com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.AbstractItemViewModel#updateFromIdentifiable(com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable)
     */
    @Override
    public void updateFromIdentifiable(Report p_oEntity) {
        //@non-generated-start[updateFromIdentifiable-notify-before][X]
        this.setAlwaysNotify(false);
        //@non-generated-end
        //@non-generated-start[updateFromIdentifiable-before][X]
        //@non-generated-end
        this.clear();
        if (p_oEntity != null) {
            this.setLstVMReportDetailPanelExpenses(new ListViewModelImpl<Expense, VMReportDetailPanelExpenses>(this,
                    VMReportDetailPanelExpenses.class, false));
            this.setId_id(p_oEntity.getId());
            this.setDate(DateUtils.getDate(p_oEntity.getDate()));
            this.setReason(p_oEntity.getReason());
            this.setAmountTotal(p_oEntity.getAmountTotal());
            ViewModelCreator oVMCreator = (ViewModelCreator) BeanLoader.getInstance().getBean(ExtBeanType.ViewModelCreator);
            if (p_oEntity.getCustomer() == null) {
                this.setVMReportDetailPanelCustomer(null);
            } else {
                this.setVMReportDetailPanelCustomer(this.lstVMReportDetailPanelCustomer.getCacheVMById(p_oEntity.getCustomer()));
            }
            if (p_oEntity.getExpenses() != null) {
                synchronized (this.lstVMReportDetailPanelExpenses) {
                    for (Expense oExpense : p_oEntity.getExpenses()) {
                        this.lstVMReportDetailPanelExpenses.add(oVMCreator.createOrUpdateVMReportDetailPanelExpenses(oExpense, this), true);
                    }
                }
            }

            //@non-generated-start[update-from-identifiable][X]
            //@non-generated-end
        }
        //@non-generated-start[updateFromIdentifiable-after][X]
        //@non-generated-end
        this.computeEditableFlag();
        //@non-generated-start[updateFromIdentifiable-notify-after][X]
        this.setAlwaysNotify(true);
        this.doOnDataLoaded(null);
        //@non-generated-end
    }

    /**
     * Updates the viewmodel using a MyExpensesScreenDetailLoader.
     *
     * @param p_oDataloader The dataloader.
     */
    @Override
    public void updateFromDataloader(final Dataloader<?> p_oDataloader) {
        //@non-generated-start[updateFromDataLoader-method][X]
        final ViewModelCreator oVMCreator = (ViewModelCreator) BeanLoader.getInstance().getBean(ExtBeanType.ViewModelCreator);
        if (p_oDataloader == null) {
            this.updateFromIdentifiable(null);
        } else if (MyExpensesScreenDetailLoader.class.isAssignableFrom(p_oDataloader.getClass())) {
            final MyExpensesScreenDetailLoader oDataloader = (MyExpensesScreenDetailLoader) p_oDataloader;
            Report data = oDataloader.getData(this.getKey());
            if (data == null) {
                data = BeanLoader.getInstance().getBean(ReportFactory.class).createInstance();
            }

            ViewModelCreator.VOVMReportDetailPanel oInfo = new ViewModelCreator.VOVMReportDetailPanel();
            oInfo.setListCustomer(oDataloader.getListCustomer());
            oInfo.setListCustomerModified(true);
            oInfo.setListType(oDataloader.getListType());
            oInfo.setListTypeModified(true);

            oVMCreator.createOrUpdateVMReportDetailPanel(data, true, oInfo);
        }
        //@non-generated-end
    }

    /**
     * Clear this view model.
     */
    public void clear() {
        this.id_id = -1;
        this.date = null;
        this.reason = null;
        this.amountTotal = null;
        this.oVMReportDetailPanelCustomer = null;
        this.lstVMReportDetailPanelExpenses = new ListViewModelImpl<Expense, VMReportDetailPanelExpenses>(VMReportDetailPanelExpenses.class, false);
        //@non-generated-start[clear-after]

        //@non-generated-end
        super.clear();
    }

    //@non-generated-start[methods]
    @ListenerOnCollectionModified(fields = {KEY_LSTVMREPORTDETAILPANELEXPENSES})
    public void onChangeExpense(ViewModel p_oSubVM, Action p_oAction, int itemId, ViewModel p_oNewOrCurrentOrDeletedObject) {
        double total = 0d;
        for (int index = 0; index < this.lstVMReportDetailPanelExpenses.getCount(); index++) {
            VMReportDetailPanelExpenses vm = this.lstVMReportDetailPanelExpenses.getCacheVMByPosition(index);
            total += vm.getAmount();
        }
        setAmountTotal(total);
    }

    @ListenerOnFieldModified(fields = {KEY_AMOUNTTOTAL})
    public void onChangeAmount(String p_sField, Object p_oOldValue, Object p_oNewValue) {
        this.defineHumanReadableAmountFrom(this.amountTotal);
    }
    //@non-generated-end
}
