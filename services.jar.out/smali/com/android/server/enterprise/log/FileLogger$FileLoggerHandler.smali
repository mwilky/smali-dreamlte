.class Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;
.super Landroid/os/Handler;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLoggerHandler"
.end annotation


# instance fields
.field private lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;-><init>(Lcom/android/server/enterprise/log/FileLogger$1;)V

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "FileLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid File Log Handler Message Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-wide v0, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    goto :goto_2

    :cond_0
    :pswitch_1
    const-string v0, "FileLogger"

    const-string v1, "consumerQueue PUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/log/FileLogger;->access$100(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v1}, Lcom/android/server/enterprise/log/FileLogger;->access$200(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v1, "FileLogger"

    const-string/jumbo v2, "producerQueue TAKE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v1}, Lcom/android/server/enterprise/log/FileLogger;->access$300(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$FileLoggerHandler;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
