.class public Lcom/android/systemui/globalactions/features/BikeModeStrategy;
.super Ljava/lang/Object;
.source "BikeModeStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/android/systemui/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/BikeModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    return-void
.end method

.method static synthetic lambda$onCreateActions$0(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->updateState()V

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_BIKE_MODE_INSTALLED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_ULTRA_POWER_SAVING_MODE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/BikeModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "bike_mode"

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    const-string v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/globalactions/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;

    invoke-direct {v2, v0}, Lcom/android/systemui/globalactions/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;-><init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
