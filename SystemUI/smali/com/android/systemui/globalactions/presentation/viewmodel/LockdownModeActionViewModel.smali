.class public Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;
.super Ljava/lang/Object;
.source "LockdownModeActionViewModel.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

.field private final mLockPatternUtilsWrapper:Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

.field private final mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;Lcom/android/systemui/globalactions/presentation/SecGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public onPress()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;

    const-string v1, "611"

    const-string v2, "6111"

    const-string v3, "Lock down"

    const-wide/16 v4, 0x4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/LockPatternUtilsWrapper;->lockDownDelayed(I)V

    return-void
.end method

.method public setActionInfo(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
