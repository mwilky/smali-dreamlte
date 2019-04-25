.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "AlarmManagerEXT"

    const-string/jumbo v2, "on AC power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "on USB power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AlarmManagerEXT"

    const-string/jumbo v3, "on Battery power"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "AlarmManagerEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Extra info, plugged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$102(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    :cond_6
    :goto_0
    return-void
.end method
