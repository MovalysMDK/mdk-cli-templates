package com.soprasteria.mdk.handson.myexpenses.panel;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

import com.adeuza.movalysfwk.mobile.mf4android.activity.business.genericdisplay.GenericLoadDataForDisplayDetailAction;
import com.adeuza.movalysfwk.mobile.mf4android.activity.business.genericdisplay.GenericUpdateVMForDisplayDetailAction;
import com.adeuza.movalysfwk.mobile.mf4android.activity.business.genericdisplay.InUpdateVMParameter;
import com.adeuza.movalysfwk.mobile.mf4android.activity.business.genericdisplay.OutUpdateVMParameter;
import com.adeuza.movalysfwk.mobile.mf4android.fragment.AbstractAutoBindMMFragment;
import com.adeuza.movalysfwk.mobile.mf4android.ui.abstractviews.MMRecyclableList;
import com.adeuza.movalysfwk.mobile.mf4android.ui.adapters.MDKBaseAdapter;
import com.adeuza.movalysfwk.mobile.mf4android.ui.adapters.MDKSpinnerAdapter;
import com.adeuza.movalysfwk.mobile.mf4android.ui.adapters.connectors.MDKViewConnectorWrapper;
import com.adeuza.movalysfwk.mobile.mf4android.ui.component.configurable.WidgetWrapperHelper;
import com.adeuza.movalysfwk.mobile.mf4javacommons.dataloader.listener.ListenerOnDataLoaderReload;
import com.adeuza.movalysfwk.mobile.mf4javacommons.dataloader.listener.ListenerOnDataLoaderReloadEvent;
import com.adeuza.movalysfwk.mobile.mf4javacommons.event.listener.ListenerOnBusinessNotification;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.action.EntityActionParameterImpl;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.actiontask.listener.ListenerOnActionSuccess;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.actiontask.listener.ListenerOnActionSuccessEvent;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.business.genericdisplay.InDisplayParameter;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ListViewModel;
import com.adeuza.movalysfwk.mobile.mf4mjcommons.ui.model.ViewModel;
import com.soprasteria.mdk.handson.R;
import com.soprasteria.mdk.handson.loader.MyExpensesScreenDetailLoader;
import com.soprasteria.mdk.handson.myexpenses.action.deletereportdetailpanel.DeleteReportDetailPanel;
import com.soprasteria.mdk.handson.myexpenses.action.savereportdetailpanel.SaveReportDetailPanel;
import com.soprasteria.mdk.handson.myexpenses.model.Customer;
import com.soprasteria.mdk.handson.myexpenses.model.ExpenseType;
import com.soprasteria.mdk.handson.myexpenses.model.Report;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.AdapterReportDetailPanelExpensesImpl;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.VMReportDetailPanel;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.VMReportDetailPanelCustomer;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.VMReportDetailPanelExpenses;
import com.soprasteria.mdk.handson.myexpenses.viewmodel.VMReportDetailPanelType;
import com.soprasteria.movalysmdk.widget.spinner.MDKRichSpinner;

/**
 * 
 */
public class ReportDetailPanel
//@non-generated-start[class-signature-extends][X]
		extends AbstractAutoBindMMFragment
//@non-generated-end

//@non-generated-start[class-signature]
//@non-generated-end
{
	//@non-generated-start[declare-spinner-adapter1][X]
	/**
	 * Adapter associated to the spinner of Customer.
	 */
	private MDKSpinnerAdapter<Customer, VMReportDetailPanelCustomer, ListViewModel<Customer, VMReportDetailPanelCustomer>> spinnerAdapter1 = null;
	//@non-generated-end
	//@non-generated-start[declare-spinner-adapter2][X]
	/**
	 * Adapter associated to the spinner of Type.
	 */
	private MDKSpinnerAdapter<ExpenseType, VMReportDetailPanelType, ListViewModel<ExpenseType, VMReportDetailPanelType>> spinnerAdapter2 = null;
	//@non-generated-end
	/**
	 * Adapter associated to the fixedList of Expenses.
	 */
	private MDKBaseAdapter fixedListAdapter3 = null;

	//@non-generated-start[attributes]
	//@non-generated-end

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setHasOptionsMenu(true);
	}

	/**
	 * {@inheritDoc}
	 * @see com.adeuza.movalysfwk.mobile.mf4android.fragment.AbstractAutoBindMMFragment#doAfterInflate(ViewGroup p_oRoot)
	 */
	@Override
	protected void doAfterInflate(ViewGroup p_oRoot) {
		super.doAfterInflate(p_oRoot);
		//@non-generated-start[do-after-inflate-1][X]
		//@non-generated-end
		//@non-generated-start[set-spinner-adapter1][X]
		//Spinner of Customer.
		MDKRichSpinner oSpinner1 = null;
		oSpinner1 = (MDKRichSpinner) p_oRoot.findViewById(R.id.reportdetailpanel__VMReportDetailPanelCustomer__edit);
		if (oSpinner1 != null) {
			this.spinnerAdapter1 = new MDKSpinnerAdapter(application.getViewModelCreator().getViewModel(VMReportDetailPanel.class)
					.getLstVMReportDetailPanelCustomer(), R.layout.greportdetailpanel__spinselvmreportdetailpanelcustomer__master,
					R.id.greportdetailpanel__spinselvmreportdetailpanelcustomer__master,
					R.layout.greportdetailpanel__spinitemvmreportdetailpanelcustomer__master, R.id.lstreportdetailpanel__name__value,
					R.id.lstreportdetailpanel__name__value, R.id.selreportdetailpanel__name__value);
			MDKViewConnectorWrapper mConnectorWrapper = WidgetWrapperHelper.getInstance().getConnectorWrapper(oSpinner1.getClass());
			mConnectorWrapper.configure((MDKBaseAdapter) this.spinnerAdapter1, oSpinner1);
		}
		//@non-generated-end
		// FixedList of Expenses.
		MMRecyclableList oFixedList3 = null;
		oFixedList3 = (MMRecyclableList) p_oRoot.findViewById(R.id.reportdetailpanel__lstVMReportDetailPanelExpenses__edit);
		if (oFixedList3 != null) {
			this.fixedListAdapter3 = new AdapterReportDetailPanelExpensesImpl(application.getViewModelCreator().getViewModel(
					VMReportDetailPanel.class).getLstVMReportDetailPanelExpenses());
			//@non-generated-start[set-spinner-adapter2][X]
			this.spinnerAdapter2 = new MDKSpinnerAdapter<ExpenseType, VMReportDetailPanelType, ListViewModel<ExpenseType, VMReportDetailPanelType>>(
					application.getViewModelCreator().getViewModel(VMReportDetailPanel.class).getLstVMReportDetailPanelType(),
					R.layout.greportdetailpanel__spinselvmreportdetailpaneltype__master,
					R.id.greportdetailpanel__spinselvmreportdetailpaneltype__master,
					R.layout.greportdetailpanel__spinitemvmreportdetailpaneltype__master,
					R.id.greportdetailpanel__spinitemvmreportdetailpaneltype__master, R.id.lstreportdetailpanel__description__value,
					R.id.selreportdetailpanel__description__value);
			fixedListAdapter3.addReferenceTo(R.id.selreportdetailpanel__VMReportDetailPanelType__edit, this.spinnerAdapter2);
			//@non-generated-end
			MDKViewConnectorWrapper mConnectorWrapper3 = WidgetWrapperHelper.getInstance().getConnectorWrapper(((View) oFixedList3).getClass());
			mConnectorWrapper3.configure(fixedListAdapter3, (View) oFixedList3);
		}
		//@non-generated-start[do-after-inflate-2][X]
		//@non-generated-end
	}

	/**
	 * {@inheritDoc}
	 * @see com.adeuza.movalysfwk.mobile.mf4android.fragment.AbstractAutoBindMMFragment#getLayoutId()
	 */
	@Override
	public int getLayoutId() {
		return R.layout.greportdetailpanel__screendetail__master;
	}

	/**
	 * {@inheritDoc}
	 * @see com.adeuza.movalysfwk.mobile.mf4android.fragment.AbstractAutoBindMMFragment#getFragmentViewModel()
	 */
	@Override
	protected ViewModel getFragmentViewModel() {

		return application.getViewModelCreator().getViewModel(VMReportDetailPanel.class);

	}

	/**
	 * {@inheritDoc}
	 * @see com.adeuza.movalysfwk.mobile.mf4android.activity.AbstractAutoBindMMDialogFragment#doFillAction()
	 */
	@Override
	public void doFillAction() {
		//@non-generated-start[doFillAction][X]
		InDisplayParameter oInDisplayParameter = new InDisplayParameter();
		oInDisplayParameter.setDataLoader(MyExpensesScreenDetailLoader.class);
		oInDisplayParameter.setId(this.getActivity().getIntent().getStringExtra(IDENTIFIER_CACHE_KEY));
		this.launchAction(GenericLoadDataForDisplayDetailAction.class, oInDisplayParameter);

		//@non-generated-end
	}

	/**
	 * Listener on MyExpensesScreenDetailLoader reload
	 * @param p_oEvent the event sent from the dataloader
	 */
	@ListenerOnDataLoaderReload(MyExpensesScreenDetailLoader.class)
	public void doOnReloadMyExpensesScreenDetailLoader(ListenerOnDataLoaderReloadEvent<MyExpensesScreenDetailLoader> p_oEvent) {
		//@non-generated-start[doOnReloadMyExpensesScreenDetailLoader][X]

		final InUpdateVMParameter oActionParameter = new InUpdateVMParameter();
		oActionParameter.setDataLoader(MyExpensesScreenDetailLoader.class);

		oActionParameter.setVm(VMReportDetailPanel.class);
		this.launchAction(GenericUpdateVMForDisplayDetailAction.class, oActionParameter);
		//@non-generated-end
	}

	/**
	 * @param p_oEvent Success event of action
	 */
	@ListenerOnActionSuccess(action = { GenericUpdateVMForDisplayDetailAction.class }, classFilters = { VMReportDetailPanelCustomer.class,
			VMReportDetailPanelExpenses.class })
	public void doOnGenericUpdateVMForDisplayDetailAction(ListenerOnActionSuccessEvent<OutUpdateVMParameter> p_oEvent) {
		if (MyExpensesScreenDetailLoader.class.equals(p_oEvent.getActionResult().getDataloader())) {

			this.spinnerAdapter1.notifyDataSetChanged();
			this.fixedListAdapter3.notifyDataSetChanged();
		}
	}

	/**
	 * Listener on SaveReportDetailPanel.ChangeReportEvent
	 * @param p_oEvent the event which triggered the callback
	 */
	@ListenerOnBusinessNotification(SaveReportDetailPanel.ChangeReportEvent.class)
	public void doOnChangeReportEvent(SaveReportDetailPanel.ChangeReportEvent p_oEvent) {
		//@non-generated-start[doOnSaveReportDetailPanel.ChangeReportEvent][X]
		this.doFillAction();
		//@non-generated-end
	}

	/**
	 * Listener on SaveReportDetailPanel.AddReportEvent
	 * @param p_oEvent the event which triggered the callback
	 */
	@ListenerOnBusinessNotification(SaveReportDetailPanel.AddReportEvent.class)
	public void doOnAddReportEvent(SaveReportDetailPanel.AddReportEvent p_oEvent) {
		//@non-generated-start[doOnSaveReportDetailPanel.AddReportEvent][X]
		this.doFillAction();
		//@non-generated-end
	}

	/**
	 * Listener on DeleteReportDetailPanel.DeleteReportEvent
	 * @param p_oEvent the event which triggered the callback
	 */
	@ListenerOnBusinessNotification(DeleteReportDetailPanel.DeleteReportEvent.class)
	public void doOnDeleteReportEvent(DeleteReportDetailPanel.DeleteReportEvent p_oEvent) {
		//@non-generated-start[doOnDeleteReportDetailPanel.DeleteReportEvent][X]
		this.doFillAction();
		//@non-generated-end
	}

	//@non-generated-start[get-spinner-adapter1-method][X]
	/**
	 * Return the adapter for the spinner 1
	 * @return the adapter for the spinner 1
	 */
	public MDKSpinnerAdapter<Customer, VMReportDetailPanelCustomer, ListViewModel<Customer, VMReportDetailPanelCustomer>> getSpinnerAdapter1() {
		return this.spinnerAdapter1;
	}

	//@non-generated-end
	//@non-generated-start[get-spinner-adapter2-method][X]
	/**
	 * Return the adapter for the spinner 2
	 * @return the adapter for the spinner 2
	 */
	public MDKSpinnerAdapter<ExpenseType, VMReportDetailPanelType, ListViewModel<ExpenseType, VMReportDetailPanelType>> getSpinnerAdapter2() {
		return this.spinnerAdapter2;
	}

	//@non-generated-end
	/**
	 * (non-Javadoc)
	 * @see com.adeuza.movalysfwk.mobile.mf4android.activity.AbstractMMActivity#getOptionMenuIds()
	 */
	@Override
	public void onCreateOptionsMenu(Menu p_oMenu, MenuInflater p_oInflater) {
		super.onCreateOptionsMenu(p_oMenu, p_oInflater);
		//@non-generated-start[onCreateOptionsMenu][X]
		if (p_oMenu.findItem(R.id.actionmenu_myexpensesscreen_delete) == null) {
			p_oInflater.inflate(R.menu.myexpensesscreen_detail_actions, p_oMenu);
		}
		if (p_oMenu.findItem(R.id.actionmenu_myexpensesscreen_save) == null) {
			p_oInflater.inflate(R.menu.myexpensesscreen_detail_actions, p_oMenu);
		}
		//@non-generated-end
	}

	//@non-generated-start[methods]
	@ListenerOnActionSuccess(action = DeleteReportDetailPanel.class)
	public void onDeleteReportSuccess(ListenerOnActionSuccessEvent<EntityActionParameterImpl<Report>> p_oEvent) {
        Toast.makeText(this.getContext(), R.string.delete_report_confirm, Toast.LENGTH_SHORT).show();
	}
	//@non-generated-end
}
