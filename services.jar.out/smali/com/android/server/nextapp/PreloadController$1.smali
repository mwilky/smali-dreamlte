.class Lcom/android/server/nextapp/PreloadController$1;
.super Landroid/os/Handler;
.source "PreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/nextapp/PreloadController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "preload_pkgs"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/nextapp/PreloadController;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v4}, Lcom/android/server/nextapp/PreloadController;->access$100(Lcom/android/server/nextapp/PreloadController;)I

    move-result v4

    sget v5, Lcom/android/server/nextapp/PkgPredictorService;->selectAppNum:I

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v4}, Lcom/android/server/nextapp/PreloadController;->access$200(Lcom/android/server/nextapp/PreloadController;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "PkgPredictorService-PreloadController"

    const-string v4, "Preloaded pkgs num enough!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v1}, Lcom/android/server/nextapp/PreloadController;->access$300(Lcom/android/server/nextapp/PreloadController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v1}, Lcom/android/server/nextapp/PreloadController;->access$108(Lcom/android/server/nextapp/PreloadController;)I

    const-string v1, "PkgPredictorService-PreloadController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already preloaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.DO_ML_LAUNCH"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v3}, Lcom/android/server/nextapp/PreloadController;->access$400(Lcom/android/server/nextapp/PreloadController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    invoke-static {}, Lcom/android/server/nextapp/PreloadController;->access$500()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "PkgPredictorService-PreloadController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preload pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/nextapp/PreloadController$1;->this$0:Lcom/android/server/nextapp/PreloadController;

    invoke-static {v4}, Lcom/android/server/nextapp/PreloadController;->access$300(Lcom/android/server/nextapp/PreloadController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_2
    return-void
.end method
