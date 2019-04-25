.class Lcom/android/server/sepunion/cover/CoverServiceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sget-boolean v5, Lcom/samsung/android/sepunion/Log;->IS_DEV:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive : action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pkgName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v5}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$100(Lcom/android/server/sepunion/cover/CoverServiceManager;)Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/sepunion/cover/CoverServiceManager$OnCoverStateProvider;->getCoverStateFromCoverServiceManager()Lcom/samsung/android/cover/CoverState;

    move-result-object v5

    if-nez v3, :cond_3

    if-eqz v4, :cond_8

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v4, :cond_5

    if-eqz v6, :cond_4

    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v8, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$300(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v8

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v8, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v8, v2}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$200(Lcom/android/server/sepunion/cover/CoverServiceManager;Ljava/lang/String;)Z

    move-result v8

    :goto_1
    nop

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_8

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v9}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$400(Lcom/android/server/sepunion/cover/CoverServiceManager;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$500(Lcom/android/server/sepunion/cover/CoverServiceManager;IZZ)Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v11, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v11, v10}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$600(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Lcom/android/server/sepunion/cover/CoverServiceManager$CoverServiceInfo;

    move-result-object v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v11, v10}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$700(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-static {v11, v10}, Lcom/android/server/sepunion/cover/CoverServiceManager;->access$800(Lcom/android/server/sepunion/cover/CoverServiceManager;Landroid/content/ComponentName;)V

    :cond_7
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v10

    iget-object v10, p0, Lcom/android/server/sepunion/cover/CoverServiceManager$1;->this$0:Lcom/android/server/sepunion/cover/CoverServiceManager;

    invoke-virtual {v5}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v11

    invoke-virtual {v10, v11, v7}, Lcom/android/server/sepunion/cover/CoverServiceManager;->bindCoverService(IZ)V

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_8
    :goto_2
    return-void
.end method
