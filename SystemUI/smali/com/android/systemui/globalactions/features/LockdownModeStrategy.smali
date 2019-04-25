.class public Lcom/android/systemui/globalactions/features/LockdownModeStrategy;
.super Ljava/lang/Object;
.source "LockdownModeStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/android/systemui/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_LOCK_DOWN_IN_POWER_MENU:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_CURRENT_USER_SECURE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_STRONG_AUTH_FOR_LOCK_DOWN:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/LockdownModeStrategy;->mViewModelFactory:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "lock_down_mode"

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->addAction(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_0
    return-void
.end method
