.class final Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;
.super Landroid/database/ContentObserver;
.source "SemDeviceInfoManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemDeviceInfoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnionContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnionContentObserver onChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$200(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;

    move-result-object v9

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$600(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, v9, Lcom/android/server/sepunion/SemDeviceInfoManagerService$ListenerContainer;->mUriEventMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/net/Uri;

    invoke-virtual {v12, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Uri matches exactly. Reporting chagnes..."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x0

    move-object v3, v13

    move/from16 v4, p1

    move-object v5, v8

    move/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_3

    :cond_1
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v15, :cond_2

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x0

    move-object v3, v15

    move/from16 v4, p1

    move-object v5, v8

    move/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;

    if-eqz v15, :cond_4

    iget-object v2, v1, Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionContentObserver;->this$0:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    const/4 v7, 0x1

    move-object v3, v15

    move/from16 v4, p1

    move-object v5, v8

    move/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$700(Lcom/android/server/sepunion/SemDeviceInfoManagerService;Lcom/android/server/sepunion/SemDeviceInfoManagerService$UnionEventListenerItem;ZLandroid/net/Uri;IZ)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mUriEventMap has no item."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v10

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
