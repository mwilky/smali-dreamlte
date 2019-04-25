.class public Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;
.super Ljava/lang/Object;
.source "BikeModeActionViewModel.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

.field private final mAlertDialogFactory:Lcom/android/systemui/globalactions/util/AlertDialogFactory;

.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

.field private final mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

.field private final mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

.field private final mToastController:Lcom/android/systemui/globalactions/util/ToastController;

.field private mToggleState:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/AlertDialogFactory;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mAlertDialogFactory:Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    return-void
.end method

.method public static synthetic lambda$onPress$0(Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/SystemController;->toggleBikeMode(Z)V

    return-void
.end method

.method private setStateLabel()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_BIKE_MODE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x1040393

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x1040392

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public getState()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public onPress()V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mFeatureFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;

    invoke-interface {v2}, Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;->onPressBikeModeAction()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v4, 0x10403dd

    invoke-virtual {v3, v4}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    const-string v5, "611"

    const-string v6, "6111"

    const-string v7, "Bike mode"

    const-wide/16 v8, 0x6

    invoke-interface/range {v4 .. v9}, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_BIKE_MODE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mAlertDialogFactory:Lcom/android/systemui/globalactions/util/AlertDialogFactory;

    new-instance v3, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/-$$Lambda$BikeModeActionViewModel$hL3LFnxK3DknUwAbxOZhzDk2fRM;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;Z)V

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/globalactions/util/AlertDialogFactory;->getBikeModeDialog(ZLjava/lang/Runnable;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mActionInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->setStateLabel()V

    return-void
.end method

.method public setState(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mToggleState:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-void
.end method

.method public updateState()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->setStateLabel()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/BikeModeActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->getGlobalActionsView()Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->notifyDataSetChanged()V

    return-void
.end method
