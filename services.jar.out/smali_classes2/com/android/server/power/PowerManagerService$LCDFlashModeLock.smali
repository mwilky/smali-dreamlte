.class Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LCDFlashModeLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binderDied()V

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "PowerManagerService"

    const-string v2, "LCDFlashModeLock : binderDied"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->binder:Landroid/os/IBinder;

    invoke-static {v1, v2, v3}, Lcom/android/server/power/PowerManagerService;->access$14400(Lcom/android/server/power/PowerManagerService;ZLandroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LCDFlashModeLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$19000(Lcom/android/server/power/PowerManagerService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
