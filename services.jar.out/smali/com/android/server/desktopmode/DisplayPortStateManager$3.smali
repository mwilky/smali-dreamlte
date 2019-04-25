.class Lcom/android/server/desktopmode/DisplayPortStateManager$3;
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

    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSettingChanged(Ljava/lang/String;I)V
    .locals 5

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$000(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-eq v2, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$302(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)Z

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$700(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$500(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$100(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager$3;->this$0:Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$300(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v2, v3, v4}, Lcom/android/server/desktopmode/DisplayPortStateManager;->access$900(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
