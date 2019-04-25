.class Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;
.super Landroid/os/Handler;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/nextapp/PkgPredictorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverHandler"
.end annotation


# static fields
.field public static final ACTION_FOREGROUND_ACTIVITY_CHANGED:I = 0x1

.field public static final ACTION_PROCESS_DIE:I = 0x2

.field public static final ACTION_SAVE_REC:I = 0x4

.field public static final ACTION_UID_GONE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/nextapp/PkgPredictorService;


# direct methods
.method public constructor <init>(Lcom/android/server/nextapp/PkgPredictorService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v0}, Lcom/android/server/nextapp/PkgPredictorService;->access$100(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/Collector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/nextapp/Collector;->saveRecords()V

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v2}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v4}, Lcom/android/server/nextapp/PkgPredictorService;->access$1000(Lcom/android/server/nextapp/PkgPredictorService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v3

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v3}, Lcom/android/server/nextapp/PkgPredictorService;->access$400(Lcom/android/server/nextapp/PkgPredictorService;)Lcom/android/server/nextapp/PreloadController;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/nextapp/PreloadController;->die(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v2, v0, v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$900(Lcom/android/server/nextapp/PkgPredictorService;II)V

    goto :goto_1

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/nextapp/PkgPredictorService$ObserverHandler;->this$0:Lcom/android/server/nextapp/PkgPredictorService;

    invoke-static {v2, v0, v1}, Lcom/android/server/nextapp/PkgPredictorService;->access$800(Lcom/android/server/nextapp/PkgPredictorService;II)V

    nop

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
