.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;)V
    .locals 6

    move-object v0, p1

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    const-string v1, "ShutdownDialog"

    invoke-virtual {v0}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    const-string v2, "ShutdownDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load frame: ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownDialog;->access$1802(Lcom/android/server/power/ShutdownDialog;I)I

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1800(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v3, v4, :cond_1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "ShutdownDialog"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_2
    :goto_1
    if-gtz v1, :cond_0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "ShutdownDialog"

    const-string/jumbo v3, "qmgLoadFrame return < 0"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->running:Z

    new-instance v0, Ljava/io/File;

    const-string v2, "//system/media/shutdownloop.qmg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$1600(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string v3, "//system/media/shutdownloop.qmg"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownDialog;->access$1700(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    return-void
.end method
