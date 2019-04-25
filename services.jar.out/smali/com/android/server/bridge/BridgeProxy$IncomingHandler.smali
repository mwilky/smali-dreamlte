.class Lcom/android/server/bridge/BridgeProxy$IncomingHandler;
.super Landroid/os/Handler;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string/jumbo v1, "handleMessage"

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2302(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/CustomCursor;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$2302(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From IncomingHandler().mCallerInfoResult: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IncomingHandler result for case 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$2300(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->access$2202(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/CustomCursor;

    invoke-static {v1, v2}, Lcom/android/server/bridge/BridgeProxy;->access$2202(Lcom/android/server/bridge/BridgeProxy;Landroid/content/CustomCursor;)Landroid/content/CustomCursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From IncomingHandler().result: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IncomingHandler result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$2200(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy$IncomingHandler;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-static {v1}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
