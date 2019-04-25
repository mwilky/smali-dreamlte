.class public Lcom/android/systemui/globalactions/features/DesktopModeStrategy;
.super Ljava/lang/Object;
.source "DesktopModeStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/android/systemui/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/android/systemui/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

.field mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;Lcom/android/systemui/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    return-void
.end method

.method public static synthetic lambda$onInitialize$0(Lcom/android/systemui/globalactions/features/DesktopModeStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mView:Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_DESKTOP_MODE_DUAL_VIEW:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->dispose()V

    return-void
.end method

.method public onInitialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;

    new-instance v1, Lcom/android/systemui/globalactions/features/-$$Lambda$DesktopModeStrategy$tjYkoDHaH4IR7NoGVJo47ReaxP8;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/features/-$$Lambda$DesktopModeStrategy$tjYkoDHaH4IR7NoGVJo47ReaxP8;-><init>(Lcom/android/systemui/globalactions/features/DesktopModeStrategy;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/util/DesktopModeManagerWrapper;->registerModeChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method
