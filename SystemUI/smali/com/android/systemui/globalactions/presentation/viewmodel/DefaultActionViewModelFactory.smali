.class public Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;
.super Ljava/lang/Object;
.source "DefaultActionViewModelFactory.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

.field private final mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

.field private final mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

.field mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/UtilFactory;Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    return-void
.end method


# virtual methods
.method public createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    invoke-direct {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;-><init>()V

    move-object v12, v1

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "force_restart_message"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "bug_report"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "emergency"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "restart"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "bike_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "power"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "data_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "lock_down_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "safe_mode"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    const-string v1, "bixby_settings"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1
    
    :sswitch_recovery
    const-string v1, "rec"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    new-instance v7, Lcom/android/systemui/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/BixbyHandler;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/globalactions/util/BixbyHandler;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/globalactions/util/SettingsWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ThemeChecker;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/util/ThemeChecker;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/LogWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/globalactions/util/LogWrapper;

    move-object v1, v7

    move-object v2, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/globalactions/presentation/viewmodel/BixbySettingsActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/BixbyHandler;Lcom/android/systemui/globalactions/util/SettingsWrapper;Lcom/android/systemui/globalactions/util/ThemeChecker;Lcom/android/systemui/globalactions/util/LogWrapper;)V

    const-string v2, "bixby_settings"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_settings_mtrl"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    invoke-direct {v1, v2, v3, v10}, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;-><init>(Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V

    const-string/jumbo v2, "lock_down_mode"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403ab

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_lockdown"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_5P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_2
    new-instance v9, Lcom/android/systemui/globalactions/presentation/viewmodel/DataModeActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/util/SystemController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    iget-object v7, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v9

    move-object v2, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/globalactions/presentation/viewmodel/DataModeActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/AlertDialogFactory;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string v2, "data_mode"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403be

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_mobiledata"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_2P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_3
    new-instance v15, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/globalactions/util/SystemController;

    iget-object v7, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/AlertDialogFactory;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string v2, "bike_mode"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x104038f

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_8P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_bikemode_square"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_4
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/SimpleTextActionViewModel;

    invoke-direct {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/SimpleTextActionViewModel;-><init>()V

    const-string v3, "force_restart_message"

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v3, 0x10403a6

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v5, "sec_global_actions_force_restart_time"

    invoke-interface {v4, v5}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->BOTTOM_SIMPLE_TEXT_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/android/systemui/globalactions/presentation/viewmodel/BugReportActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/SystemController;

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/SystemController;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v5, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v4, v5}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-direct {v1, v10, v3, v4}, Lcom/android/systemui/globalactions/presentation/viewmodel/BugReportActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string v3, "bug_report"

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v3, 0x1040173

    invoke-virtual {v0, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v4, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/util/SystemPropertiesWrapper;->getBugReportStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->BOTTOM_TEXT_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_6
    new-instance v15, Lcom/android/systemui/globalactions/presentation/viewmodel/EmergencyActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/SystemController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/util/SystemController;

    iget-object v6, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/EmergencyActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string v2, "emergency"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403bf

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "tw_ic_do_emergencymode"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_4P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_7
    new-instance v15, Lcom/android/systemui/globalactions/presentation/viewmodel/RestartActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    iget-object v6, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/RestartActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string/jumbo v2, "restart"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403b3

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_1

    const v2, 0x104039e

    goto :goto_2

    :cond_1
    const v2, 0x104039d

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_restart"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_3P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_8
    new-instance v9, Lcom/android/systemui/globalactions/presentation/viewmodel/SafeModeActionViewModel;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v8, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    move-object v1, v9

    move-object v2, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/globalactions/presentation/viewmodel/SafeModeActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ResourcesWrapper;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;)V

    const-string/jumbo v2, "safe_mode"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403b4

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_2

    const v2, 0x10403a0

    goto :goto_3

    :cond_2
    const v2, 0x104039f

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_safemode"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    :pswitch_9
    new-instance v15, Lcom/android/systemui/globalactions/presentation/viewmodel/PowerActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    iget-object v6, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/PowerActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string/jumbo v2, "power"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const v2, 0x10403ad

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    if-eqz v13, :cond_3

    const v2, 0x104039c

    goto :goto_4

    :cond_3
    const v2, 0x104039b

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_poweroff"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1
    
    :pswitch_recovery
    new-instance v15, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    iget-object v6, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    move-object v1, v15

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V

    const-string/jumbo v2, "rec"

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    const-string v7, "rebootrecovery"

    const-string v8, "string"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    const-string v7, "rebootrecovery2"

    const-string v8, "string"

    invoke-static {v7, v8}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "tw_ic_do_restart"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    sget-object v3, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_3P_VIEW:Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v12, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {v1, v12}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V

    return-object v1

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48eacea6 -> :sswitch_9
        -0x436d1ceb -> :sswitch_8
        -0x218e16f4 -> :sswitch_7
        -0x15abc2e8 -> :sswitch_6
        0x65e8905 -> :sswitch_5
        0x2b901341 -> :sswitch_4
        0x416a9e0f -> :sswitch_3
        0x6118c591 -> :sswitch_2
        0x7cb9695f -> :sswitch_1
        0x7ff77083 -> :sswitch_0
        0x1B890 -> :sswitch_recovery
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_recovery
    .end packed-switch
.end method

.method public getResString(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResString(II)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/android/systemui/globalactions/util/UtilFactory;

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setFeatureFactory(Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    return-void
.end method
