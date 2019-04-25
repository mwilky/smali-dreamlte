.class public Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;
.super Ljava/lang/Object;
.source "KnoxContainerStrategy.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/strategies/InitializationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

.field private final mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/SecGlobalActions;Lcom/android/systemui/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    return-void
.end method


# virtual methods
.method public onInitialize(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_VALID_VERSION:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;->mGlobalActions:Lcom/android/systemui/globalactions/presentation/SecGlobalActions;

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxContainerStrategy;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemConditions;->GET_KEYGUARD_SHOW_STATE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/SecGlobalActions;->setKeyguardShowing(Z)V

    :cond_0
    return-void
.end method
