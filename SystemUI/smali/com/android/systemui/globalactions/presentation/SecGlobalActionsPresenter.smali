.class public Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;
.super Ljava/lang/Object;
.source "SecGlobalActionsPresenter.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/SecGlobalActions;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecGlobalActionsPresenter"

.field public static sViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActionConfirming:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

.field mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

.field private final mContentObserverWrapper:Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

.field mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

.field mIsDeviceProvisioned:Z

.field mIsDisabled:Z

.field mIsKeyguardShowing:Z

.field mIsOverrideDefaultActions:Z

.field mIsShowing:Z

.field private final mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

.field mSystemCondition:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

.field private final mThemeChecker:Lcom/android/systemui/globalactions/util/ThemeChecker;

.field mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

.field mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

.field mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;->INSTANCE:Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ZCpZZVIRDfropjBwlNsGiE2TYiY;

    sput-object v0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;Lcom/android/systemui/globalactions/util/BroadcastManager;Lcom/android/systemui/globalactions/util/SystemController;Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/LogWrapper;Lcom/android/systemui/globalactions/util/ThemeChecker;Lcom/android/systemui/globalactions/util/ContentObserverWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mThemeChecker:Lcom/android/systemui/globalactions/util/ThemeChecker;

    iput-object p10, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

    return-void
.end method

.method static synthetic lambda$clearActions$0(Ljava/lang/String;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)Z
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$onShowDialog$1(Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$onShowDialog$2(Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic lambda$registerSecureConfirmAction$3(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->onPressSecureConfirm()V

    return-void
.end method

.method static synthetic lambda$static$4(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)I
    .locals 2

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->getValue()I

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ViewType;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAction ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearActions(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;

    invoke-direct {v0, p1}, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$gHkOdtqFDdDFCYar0L7knikn3fM;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public clearCoverStateChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string v2, "clearCoverStateChange()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/SystemController;->clearCoverStateChange()V

    return-void
.end method

.method public confirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0, p1}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->showActionConfirming(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    const-string v0, "GlobalActions$ConfirmDialog"

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public confirmSafeMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "safe_mode"

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->confirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    return-void
.end method

.method createActions()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createActionsCreationStrategies(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/ActionsCreationStrategy;

    invoke-interface {v2, p0}, Lcom/android/systemui/globalactions/presentation/strategies/ActionsCreationStrategy;->onCreateActions(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->createDefaultActions()V

    :cond_1
    return-void
.end method

.method public createDefaultActions()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string v2, "createDefaultActions()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "power"

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "restart"

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    const-string v1, "bug_report"

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v3}, Lcom/android/systemui/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateBugReportAction()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v3, "bug_report"

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemCondition:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v3}, Lcom/android/systemui/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyAction()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    goto :goto_2

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v3, "emergency"

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v3, "rec"

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_5
    return-void
.end method

.method public createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createOnKeyListenerStrategy(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/globalactions/presentation/strategies/OnKeyListenerStrategy;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lcom/android/systemui/globalactions/presentation/strategies/OnKeyListenerStrategy;->onKeyListenerAction(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method

.method public dismissDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    :goto_0
    return-void
.end method

.method dispose()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createDisposingStrategies(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/DisposingStrategy;

    invoke-interface {v2}, Lcom/android/systemui/globalactions/presentation/strategies/DisposingStrategy;->onDispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGlobalActionsView()Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object v0
.end method

.method public getValidActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    iget-boolean v3, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public hideDialogOnSecureConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->hideDialogOnSecureConfirm()V

    return-void
.end method

.method public hideQuickPanel()V
    .locals 1

    const-string v0, "GlobalActions"

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public hideQuickPanel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideQuickPanelBackground("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mSystemController:Lcom/android/systemui/globalactions/util/SystemController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/globalactions/util/SystemController;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method initialize()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createInitializationStrategies(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/InitializationStrategy;

    iget-boolean v3, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/strategies/InitializationStrategy;->onInitialize(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isActionConfirming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return v0
.end method

.method public onCancelDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onCancelDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->isActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mActionConfirming:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->cancelConfirming()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->clearCoverStateChange()V

    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/BroadcastManager;->unregisterDismissBroadcastReceiver()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mThemeChecker:Lcom/android/systemui/globalactions/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ThemeChecker;->reset()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->unregisterObservers()V

    return-void
.end method

.method public onPrepareWindow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mFactory:Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/features/FeatureFactory;->createWindowDecorationStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/presentation/strategies/WindowDecorationStrategy;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v3, v2}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->addWindowDecorator(Lcom/android/systemui/globalactions/presentation/strategies/WindowDecorationStrategy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onShowDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ur2L0RUYw8MOp-xKNoqwKkrg0CM;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$ur2L0RUYw8MOp-xKNoqwKkrg0CM;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;)V

    new-instance v2, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$sAcpSNDcmj3kIGDwBELGqd9RStw;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$sAcpSNDcmj3kIGDwBELGqd9RStw;-><init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/BroadcastManager;->registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->hideQuickPanel()V

    return-void
.end method

.method public onStart(ZZZ)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsPresenter"

    const-string/jumbo v2, "onStart()"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->dismissDialog(Z)V

    :goto_0
    return v2

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->initialize()V

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsShown()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsManager;->onGlobalActionsHidden()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->createActions()V

    return v1
.end method

.method public registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mContentObserverWrapper:Lcom/android/systemui/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSecureConfirmAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mBroadcastManager:Lcom/android/systemui/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;

    invoke-direct {v1, p1}, Lcom/android/systemui/globalactions/presentation/-$$Lambda$SecGlobalActionsPresenter$qcIKeoL6AgFcq3cCTvVzVfYUhKE;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/BroadcastManager;->registerSecureConfirmAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDisabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsDisabled:Z

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return-void
.end method

.method public setOverrideDefaultActions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    return-void
.end method
