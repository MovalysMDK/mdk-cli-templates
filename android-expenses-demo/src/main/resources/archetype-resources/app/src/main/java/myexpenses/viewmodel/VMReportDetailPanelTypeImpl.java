package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.listener.ListenerOnFieldModified;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseCategory;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;

/**
 * 
 */
public class VMReportDetailPanelTypeImpl
//@non-generated-start[class-signature-extends]
		extends AbstractAmountViewModel<ExpenseType>
//@non-generated-end
		implements VMReportDetailPanelType
//@non-generated-start[class-signature]
//@non-generated-end
{
	/**
	 * Key used to identify the description attribute
	 */
	protected static final String KEY_DESCRIPTION = "description";
	/**
	 * Key used to identify the category attribute
	 */
	protected static final String KEY_CATEGORY = "category";
	/**
	 * Key used to identify the amountMax attribute
	 */
	protected static final String KEY_AMOUNTMAX = "amountMax";

	/**
	 * Generic description of the expense type.
	Could be : HOTEL, MEAL, TRAIN, PARKING, CAR or OTHER.
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
	 * <p> type=ExpenseCategory mandatory=false</p>
	 */
	//@non-generated-start[attribute-category]
	//@non-generated-end[attribute-category]
	private ExpenseCategory category;

	/**
	 * Maximum amount generally refunded by the company, for this expense type.
	 * 
	 * <p>Attribute </p>
	 * <p> type=Double mandatory=false</p>
	 */
	//@non-generated-start[attribute-amountMax]
	//@non-generated-end[attribute-amountMax]
	private Double amountMax;

	//@non-generated-start[attributes]
	//@non-generated-end

	/**
	 * Default constructor.
	 */
	public VMReportDetailPanelTypeImpl() {
		this.setEditable(false);
	}

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
	public ExpenseCategory getCategory() {
		return this.category;
	}

	/** 
	 * {@inheritDoc}
	 */
	@Override
	public void setCategory(ExpenseCategory p_oCategory) {
		this.affectEnumAndNotify(this.category, p_oCategory, KEY_CATEGORY);
	}

	/** 
	 * {@inheritDoc}
	 */
	@Override
	public Double getAmountMax() {
		return this.amountMax;
	}

	/** 
	 * {@inheritDoc}
	 */
	@Override
	public void setAmountMax(Double p_dAmountMax) {
		this.affectObjectAndNotify(this.amountMax, p_dAmountMax, KEY_AMOUNTMAX);
	}

	/**
	 * {@inheritDoc}
	 * @see com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ItemViewModel#modifyToIdentifiable(com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable)
	 */
	public void modifyToIdentifiable(ExpenseType p_oEntity) {
		//@non-generated-start[modifyToIdentifiable-before][X]
		//@non-generated-end
		if (p_oEntity != null) {
			p_oEntity.setId(this.id_id);
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
	public void updateFromIdentifiable(ExpenseType p_oEntity) {
		//@non-generated-start[updateFromIdentifiable-notify-before][X]
		this.setAlwaysNotify(false);
		//@non-generated-end
		//@non-generated-start[updateFromIdentifiable-before][X]
		//@non-generated-end
		this.clear();
		if (p_oEntity != null) {
			this.setId_id(p_oEntity.getId());
			this.setDescription(p_oEntity.getDescription());
			this.setCategory(p_oEntity.getCategory());
			this.setAmountMax(p_oEntity.getAmountMax());

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
		this.category = ExpenseCategory.FWK_NONE;
		this.amountMax = null;
		//@non-generated-start[clear-after]

		//@non-generated-end
		super.clear();
	}

	//@non-generated-start[methods]

	@ListenerOnFieldModified(fields = {KEY_AMOUNTMAX})
	public void onChangeAmount(String p_sField, Object p_oOldValue, Object p_oNewValue) {
		this.defineHumanReadableAmountFrom(this.amountMax);
	}
	//@non-generated-end
}
