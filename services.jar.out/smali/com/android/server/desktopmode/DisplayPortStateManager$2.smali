.class Lcom/android/server/desktopmode/DisplayPortStateManager$2;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "DisplayPortStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DisplayPortStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-eq v4, v2, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$102(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v5, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$2;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v5}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    nop

    :cond_2
    :goto_1
    invoke-static {v4, v0, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
