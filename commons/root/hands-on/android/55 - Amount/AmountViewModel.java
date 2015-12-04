package com.soprasteria.mdk.handson.myexpenses.viewmodel;

import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ViewModel;

/**
 * ViewModel having an amount.
 */
public interface AmountViewModel extends ViewModel {

    /**
     * Return an String representation of a human-readable amount
     */
    public String getHumanReadableAmount();
}
