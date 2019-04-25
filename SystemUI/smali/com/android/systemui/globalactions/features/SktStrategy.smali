.class public Lcom/android/systemui/globalactions/features/SktStrategy;
.super Ljava/lang/Object;
.source "SktStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/ActionInteractionStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "SktStrategy"


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

.field private final mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

.field private final mToastController:Lcom/android/systemui/globalactions/util/ToastController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/ToastController;Lcom/android/systemui/globalactions/util/ResourcesWrapper;Lcom/android/systemui/globalactions/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public onPressBikeModeAction()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressBikeModeAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x10403dd

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPressEmergencyModeAction()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressEmergencyModeAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x10403d8

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPressPowerAction()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressPowerAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_TSAFE_LOCK:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v3, 0x10403d9

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v2, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v3, 0x10403da

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPressRestartAction()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SktStrategy"

    const-string/jumbo v2, "onPressRestartAction"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_CARRIRER_LOCK_PLUS_ENABLED:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mToastController:Lcom/android/systemui/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/SktStrategy;->mResourcesWrapper:Lcom/android/systemui/globalactions/util/ResourcesWrapper;

    const v2, 0x10403dc

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
