.class Lcom/android/server/vr/GearVrManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/GearVrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$4;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerService$4;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/GearVrManagerService;->access$1900(Lcom/android/server/vr/GearVrManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "GearVrManagerService"

    const-string/jumbo v2, "update User Unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$4;->this$0:Lcom/android/server/vr/GearVrManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/vr/GearVrManagerService;->access$4902(Lcom/android/server/vr/GearVrManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerService$4;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerService;->access$2000(Lcom/android/server/vr/GearVrManagerService;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
