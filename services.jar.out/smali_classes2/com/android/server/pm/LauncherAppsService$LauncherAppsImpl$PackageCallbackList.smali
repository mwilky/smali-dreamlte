.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageCallbackList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$300(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-virtual {v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->checkCallbackCount()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
