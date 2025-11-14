.class public final Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;


# instance fields
.field public mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mContext:Landroid/content/Context;

.field public mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

.field public mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

.field public mView:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

.field public mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;


# virtual methods
.method public final createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_62

    goto :goto_34

    :sswitch_11
    const-string/jumbo v2, "emergency"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_34

    :cond_1b
    const/4 v1, 0x2

    goto :goto_34

    :sswitch_1d
    const-string/jumbo v2, "restart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_34

    :cond_27
    const/4 v1, 0x1

    goto :goto_34

    :sswitch_29
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    packed-switch v1, :pswitch_data_70

    return-object v0

    :pswitch_38  #0x0, 0x1, 0x2
    new-instance p1, Lcom/samsung/android/globalactions/features/SktStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-interface {p0, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/SktStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    nop

    :sswitch_data_62
    .sparse-switch
        0x65e8905 -> :sswitch_29
        0x416a9e0f -> :sswitch_1d
        0x6118c591 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_38  #00000001
        :pswitch_38  #00000002
    .end packed-switch
.end method

.method public final createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string v1, "DATA_MODE"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/samsung/android/globalactions/features/DataModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/globalactions/features/DataModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string v1, "LOCKDOWN_MODE"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/globalactions/features/LockdownModeStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    return-object p1
.end method

.method public final createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "emergency"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_68

    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string/jumbo v1, "SAFETY_CARE"

    invoke-virtual {p2, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2f

    new-instance p2, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    check-cast v2, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {p2, p1, v1, v2}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string p2, "DESKTOP_MODE"

    invoke-virtual {p1, p2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_53

    new-instance p1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object p2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    check-cast v2, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_53
    iget-object p1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string/jumbo p2, "RESERVE_BATTERY_MODE"

    invoke-virtual {p1, p2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    new-instance p1, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {p1, p0}, Lcom/samsung/android/globalactions/features/ReserveBatteryModeStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    return-object v0
.end method

.method public final createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string v1, "DESKTOP_MODE"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    check-cast v3, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object p1
.end method

.method public final createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string v2, "DESKTOP_MODE"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mView:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v4, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    check-cast v4, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iget-object v5, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string/jumbo v2, "SAFETY_CARE"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    new-instance v1, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;

    iget-object v2, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    check-cast v3, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/util/DefaultUtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string v2, "KNOX_CONTAINER"

    invoke-virtual {v1, v2}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v1, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/globalactions/features/KnoxContainerStrategy;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5e
    return-object v0
.end method

.method public final createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final createSoftwareUpdateStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "restart"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    new-instance p2, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/globalactions/features/FOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {p0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {p2, v0, p0}, Lcom/samsung/android/globalactions/features/SecFOTAForceUpdateStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SystemController;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    return-object p1
.end method

.method public final createViewInflateStrategy()Ljava/util/List;
    .registers 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;
    .registers 4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mFeatures:Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;

    const-string/jumbo v1, "NAV_BAR"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionFeatures;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;

    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/features/GlobalActionsFeatureFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/features/NavigationBarStrategy;-><init>(Lcom/samsung/android/globalactions/util/ConditionChecker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-object p1
.end method

.method public final createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
