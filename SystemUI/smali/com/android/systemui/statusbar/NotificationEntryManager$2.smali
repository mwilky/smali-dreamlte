.class Lcom/android/systemui/statusbar/NotificationEntryManager$2;
.super Landroid/database/ContentObserver;
.source "NotificationEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationEntryManager;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationEntryManager$Callback;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationEntryManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/NotificationEntryManager;->mDisableNotificationAlerts:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    const-string v1, "NotificationEntryMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heads up is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-eqz v3, :cond_0

    const-string v3, "enabled"

    goto :goto_0

    :cond_0
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mUseHeadsUp:Z

    if-nez v1, :cond_1

    const-string v1, "NotificationEntryMgr"

    const-string v2, "dismissing any existing heads up notification on disable event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationEntryManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationEntryManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_1
    return-void
.end method
