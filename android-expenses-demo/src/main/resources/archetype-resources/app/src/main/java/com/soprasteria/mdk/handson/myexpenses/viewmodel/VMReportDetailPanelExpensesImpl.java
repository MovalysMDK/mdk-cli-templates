package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mobile.mf4mjcommons.core.services.BeanLoader;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.model.MPhotoHelper;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ListViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.MPhotoVO;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.clonable.NonClonableViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.ListenerOnFieldModified;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.businessrule.BusinessRule;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.businessrule.PropertyTarget;
import com.soprasteria.mdk.handson.myexpenses.model.Expense;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseState;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseTypeFactory;

/**
 * 
 */
public class VMReportDetailPanelExpensesImpl
//@non-generated-start[class-signature-extends]
        extends AbstractAmountViewModel<Expense>
//@non-generated-end
        implements VMReportDetailPanelExpenses
//@non-generated-start[class-signature]
//@non-generated-end
{
    /**
     * Key used to identify the VMReportDetailPanelType entity attribute
     */
    protected static final String KEY_VMREPORTDETAILPANELTYPE = "VMReportDetailPanelType";
    /**
     * Key used to identify the description attribute
     */
    protected static final String KEY_DESCRIPTION = "description";
    /**
     * Key used to identify the amount attribute
     */
    protected static final String KEY_AMOUNT = "amount";
    /**
     * Key used to identify the photo attribute
     */
    protected static final String KEY_PHOTO = "photo";
    /**
     * Key used to identify the state attribute
     */
    protected static final String KEY_STATE = "state";

    /**
     *
     *
     * <p>Attribute </p>
     * <p> type=String mandatory=false</p>
     */
    //@non-generated-start[attribute-description]
    //@non-generated-end[attribute-description]
    private String description;

    /**
     *
     *
     * <p>Attribute </p>
     * <p> type=Double mandatory=false</p>
     */
    //@non-generated-start[attribute-amount]
    //@non-generated-end[attribute-amount]
    private Double amount;

    /**
     *
     *
     * <p>Attribute </p>
     * <p> type=MPhotoVO mandatory=false</p>
     */
    //@non-generated-start[attribute-photo]
    //@non-generated-end[attribute-photo]
    private MPhotoVO photo;

    /**
     *
     *
     * <p>Attribute </p>
     * <p> type=ExpenseState mandatory=false</p>
     */
    //@non-generated-start[attribute-state]
    //@non-generated-end[attribute-state]
    private ExpenseState state;
    /**
     * selected element on combo
     */
    @NonClonableViewModel
    private VMReportDetailPanelType oVMReportDetailPanelType;

    /**
     * combo attribute
     */
    private ListViewModel<ExpenseType, VMReportDetailPanelType> lstVMReportDetailPanelType = null;

    //@non-generated-start[attributes]
    //@non-generated-end

    /**
     * {@inheritDoc}
     */
    @Override
    public String getDescription() {
        return this.description;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setDescription(String p_sDescription) {
        this.affectObjectAndNotify(this.description, p_sDescription, KEY_DESCRIPTION);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public Double getAmount() {
        return this.amount;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setAmount(Double p_dAmount) {
        this.affectObjectAndNotify(this.amount, p_dAmount, KEY_AMOUNT);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public MPhotoVO getPhoto() {
        return this.photo;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setPhoto(MPhotoVO p_oPhoto) {
        this.affectObjectAndNotify(this.photo, p_oPhoto, KEY_PHOTO);
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public ExpenseState getState() {
        return this.state;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void setState(ExpenseState p_oState) {
        this.affectEnumAndNotify(this.state, p_oState, KEY_STATE);
    }

    /**
     * Returns the combo selected item view model oVMReportDetailPanelType
     * @return the value of oVMReportDetailPanelType
     */
    public VMReportDetailPanelType getVMReportDetailPanelType() {
        return this.oVMReportDetailPanelType;
    }

    /**
     * returns the combo view model lstVMReportDetailPanelType
     * @return the value of lstVMReportDetailPanelType
     */
    public ListViewModel<ExpenseType, VMReportDetailPanelType> getLstVMReportDetailPanelType() {
        return this.lstVMReportDetailPanelType;
    }

    /**
     * sets the combo selected item view model.
     * @param p_oVMReportDetailPanelType combo selected item view model
     */
    public void setVMReportDetailPanelType(VMReportDetailPanelType p_oVMReportDetailPanelType) {
        if (this.oVMReportDetailPanelType != p_oVMReportDetailPanelType) {
            Object sOldVal = this.oVMReportDetailPanelType;
            this.oVMReportDetailPanelType = p_oVMReportDetailPanelType;
            this.notifyFieldChanged(KEY_VMREPORTDETAILPANELTYPE, sOldVal, p_oVMReportDetailPanelType);
        }
    }

    /**
     * sets the combo view model.
     * @param p_listVMReportDetailPanelTypes combo view model
     */
    public void setLstVMReportDetailPanelType(ListViewModel<ExpenseType, VMReportDetailPanelType> p_listVMReportDetailPanelTypes) {
        this.lstVMReportDetailPanelType = p_listVMReportDetailPanelTypes;
    }

    /**
     * {@inheritDoc}
     * @see com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel#modifyToIdentifiable(com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable)
     */
    public void modifyToIdentifiable(Expense p_oEntity) {
        //@non-generated-start[modifyToIdentifiable-before][X]
        //@non-generated-end
        if (p_oEntity != null) {
            p_oEntity.setId(this.id_id);
            p_oEntity.setDescription(this.description);
            p_oEntity.setAmount(this.amount);
            p_oEntity.setPhoto(MPhotoHelper.toComponent(this.photo));
            if (this.oVMReportDetailPanelType == null) {
                p_oEntity.setType(null);
            } else {
                ExpenseType oExpenseType = BeanLoader.getInstance().getBean(ExpenseTypeFactory.class).createInstance();
                this.oVMReportDetailPanelType.modifyToIdentifiable(oExpenseType);
                p_oEntity.setType(oExpenseType);
            }
            //@non-generated-start[modify-to-identifiable][X]
            //@non-generated-end
        }
        //@non-generated-start[modifyToIdentifiable-after][X]
        //@non-generated-end
    }

    /**
     * {@inheritDoc}
     * @see com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.AbstractItemViewModel#updateFromIdentifiable(com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable)
     */
    @Override
    public void updateFromIdentifiable(Expense p_oEntity) {
        //@non-generated-start[updateFromIdentifiable-notify-before][X]
        this.setAlwaysNotify(false);
        //@non-generated-end
        //@non-generated-start[updateFromIdentifiable-before][X]
        //@non-generated-end
        this.clear();
        if (p_oEntity != null) {
            this.setId_id(p_oEntity.getId());
            this.setDescription(p_oEntity.getDescription());
            this.setAmount(p_oEntity.getAmount());
            this.setPhoto(MPhotoHelper.toViewModel(p_oEntity.getPhoto()));
            this.setState(p_oEntity.getState());
            if (p_oEntity.getType() == null) {
                this.setVMReportDetailPanelType(null);
            } else {
                this.setVMReportDetailPanelType(((VMReportDetailPanel) this.getParent()).getLstVMReportDetailPanelType().getCacheVMById(
                        p_oEntity.getType()));
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
     * Clear this view model.
     */
    public void clear() {
        this.id_id = -1;
        this.description = null;
        this.amount = null;
        this.photo = new MPhotoVO();
        this.state = ExpenseState.FWK_NONE;
        this.oVMReportDetailPanelType = null;
        //@non-generated-start[clear-after]

        //@non-generated-end
        super.clear();
    }

    //@non-generated-start[methods]
    @ListenerOnFieldModified(fields = {KEY_VMREPORTDETAILPANELTYPE, KEY_AMOUNT})
    public void onChangeAmountOrType(String p_sField, Object p_oOldObject, Object p_oNewObject) {
        if (oVMReportDetailPanelType != null && oVMReportDetailPanelType.getAmountMax() != null
                && this.amount > 0) {
            if (this.amount > this.oVMReportDetailPanelType.getAmountMax()) {
                setState(ExpenseState.AMOUNTOVERMAX);
            } else {
                setState(ExpenseState.AMOUNTOK);
            }
        } else {
            setState(ExpenseState.AMOUNTOK);
        }
    }

    @BusinessRule(fields = KEY_STATE, propertyTarget = PropertyTarget.HIDDEN, triggers = { KEY_VMREPORTDETAILPANELTYPE })
    public boolean isStateHidden() {
        return this.oVMReportDetailPanelType == null || this.oVMReportDetailPanelType.getAmountMax() == null;
    }

    @ListenerOnFieldModified(fields = {KEY_AMOUNT})
    public void onChangeAmount(String p_sField, Object p_oOldValue, Object p_oNewValue) {
        this.defineHumanReadableAmountFrom(this.amount);
    }
    //@non-generated-end
}
