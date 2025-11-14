.class public final Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;
.super Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mOnDismiss:Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;)V
    .registers 16

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;)V

    iput-object p3, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;

    new-instance v4, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;

    invoke-direct {v4, p2}, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    new-instance p1, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    iget-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v4}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;)V

    new-instance p2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    const-class v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-virtual {p1, v1}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/SettingsWrapper;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->mContext:Landroid/content/Context;

    const-class v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string/jumbo v1, "[Service]"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->setPackageTag(Ljava/lang/String;)V

    const-class v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    const-class v0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    new-instance v11, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;

    invoke-direct {v11}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalyticsImpl;-><init>()V

    new-instance v0, Lcom/samsung/android/globalactions/util/SystemConditionChecker;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/globalactions/util/SystemConditionChecker;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/features/Features;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    new-instance v3, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v3, p1, v0, v1, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;-><init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    new-instance v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iput-object p0, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iput-object p1, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    iput-object v3, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iput-object p2, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    iput-object v2, v0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-virtual {v3, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V

    new-instance v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-class p2, Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/samsung/android/globalactions/util/BroadcastManager;

    const-class p2, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {p1, p2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-class p2, Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {p1, p2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Lcom/samsung/android/globalactions/util/ThemeChecker;

    const-class p2, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;-><init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;->mOnDismiss:Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;->run()V

    :cond_b
    invoke-super {p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->dismiss()V

    return-void
.end method

.method public final showDialog()V
    .registers 13

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v7, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v9, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v10, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    iget-boolean v11, p0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mFromSystemServer:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/globalactions/presentation/view/ContentViewFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;Z)V

    iput-object v0, v2, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->mContentViewFactory:Lcom/samsung/android/globalactions/presentation/view/ContentViewFactoryBase;

    invoke-super {v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->showDialog()V

    return-void
.end method
