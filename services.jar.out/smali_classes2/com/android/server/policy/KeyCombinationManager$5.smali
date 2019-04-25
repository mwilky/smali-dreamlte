.class Lcom/android/server/policy/KeyCombinationManager$5;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$5;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$5;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyCombinationManager"

    const-string v1, "Stop Lock Task Mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KeyCombinationManager"

    const-string v2, "Unable to reach activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
