.class public Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;
.super Ljava/lang/Object;
.source "RecoveryActionViewModel.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

.field private final mToastController:Lcom/android/systemui/globalactions/util/ToastController;

.field private final mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V
    .locals 0
    .param p1, "globalActions"    # Lcom/android/systemui/globalactions/presentation/SecGlobalActions;
    .param p2, "conditionChecker"    # Lcom/android/systemui/globalactions/util/ConditionChecker;
    .param p3, "secGlobalActionsAnalytics"    # Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;
    .param p4, "windowManagerFuncs"    # Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;
    .param p5, "featureFactory"    # Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;
    .param p6, "toastController"    # Lcom/android/systemui/globalactions/util/ToastController;
    .param p7, "keyguardManagerWrapper"    # Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;
    .param p8, "resourceWrapper"    # Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    .line 42
    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    .line 45
    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    .line 46
    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    .line 47
    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mKeyguardManagerWrapper:Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    .line 48
    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    .line 49
    return-void
.end method

.method private isNeedSecureConfirm()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_SIM_LOCK:Lcom/android/systemui/globalactions/util/SystemConditions;

    .line 135
    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/android/systemui/globalactions/util/SystemConditions;

    .line 136
    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/android/systemui/globalactions/util/SystemConditions;

    .line 137
    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_ENCRYPTION_STATUS_ACTIVE:Lcom/android/systemui/globalactions/util/SystemConditions;

    .line 138
    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0
.end method


# virtual methods
.method public getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .locals 6

    .line 63
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;

    .line 66
    .local v2, "strategy":Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;
    invoke-interface {v2}, Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;->onPressRestartAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    return-void

    .line 69
    .end local v2    # "strategy":Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;
    :cond_0
    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v1}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->isActionConfirming()Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v1, p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->confirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 73
    return-void

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v3, 0x10403dc

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    .line 78
    return-void

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    const-string/jumbo v3, "restart"

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createSoftwareUpdateStrategy(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "updateStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;>;"
    const/4 v2, 0x1

    .line 84
    .local v2, "isNeedToUpdate":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;

    .line 85
    .local v4, "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;
    invoke-interface {v4}, Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;->onUpdate()Z

    move-result v5

    if-nez v5, :cond_4

    .line 86
    const/4 v2, 0x0

    .line 87
    goto :goto_2

    .line 89
    .end local v4    # "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;
    :cond_4
    goto :goto_1

    .line 90
    :cond_5
    :goto_2
    if-eqz v2, :cond_7

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;

    .line 92
    .restart local v4    # "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;
    invoke-interface {v4}, Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;->update()V

    .line 93
    .end local v4    # "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SoftwareUpdateStrategy;
    goto :goto_3

    .line 94
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    .line 95
    return-void

    .line 98
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->isNeedSecureConfirm()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 99
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, "secureConfirmStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;

    .line 101
    .local v5, "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;
    invoke-interface {v5}, Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm()V

    .line 102
    .end local v5    # "strategy":Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;
    goto :goto_4

    .line 103
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v4, p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 104
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mKeyguardManagerWrapper:Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;

    const-string/jumbo v5, "shutdown"

    invoke-virtual {v4, v5}, Lcom/android/systemui/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v4}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    .line 106
    return-void

    .line 108
    .end local v3    # "secureConfirmStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/globalactions/presentation/strategies/SecureConfirmStrategy;>;"
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->reboot()V

    .line 109
    return-void
.end method

.method public onPressSecureConfirm()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->reboot()V

    .line 119
    return-void
.end method

.method reboot()V
    .locals 3
    
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.mwilky.SERVICES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ACTION"

    const-string v2, "RECOVERY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/RecoveryActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    .line 59
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 113
    const/4 v0, 0x1

    return v0
.end method
