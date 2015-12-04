package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mf4jcommons.core.beans.MIdentifiable;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.AbstractItemViewModelId;

import java.text.DecimalFormat;
import java.text.NumberFormat;


public abstract class AbstractAmountViewModel<ITEM extends MIdentifiable> extends AbstractItemViewModelId<ITEM> {
    /**
     * Key used to identify the amountMax attribute
     */
    protected static final String KEY_HUMANREDABLEAMOUNT = "humanReadableAmount";

    /**
     * Format used by this helper to format Double/double
     */
    private static final String AMOUNT_STR_FORMAT = ".00 €";

    /**
     * NumberFormat used by this helper to format Double/double
     */
    private static final NumberFormat AMOUNT_FORMAT = new DecimalFormat(AMOUNT_STR_FORMAT);

    private String humanReadableAmount;

    /**
     * {@inheritDoc}
     */
    public String getHumanReadableAmount() {
        return humanReadableAmount;
    }

    protected void defineHumanReadableAmountFrom(Double amount) {
        String humanReadableAmount = null;
        if (amount != null) {
            humanReadableAmount = AMOUNT_FORMAT.format(amount);
        }
        this.setHumanReadableAmount(humanReadableAmount);
    }

    private void setHumanReadableAmount(String amount) {
        this.affectObjectAndNotify(this.humanReadableAmount, amount, KEY_HUMANREDABLEAMOUNT);
    }
}
