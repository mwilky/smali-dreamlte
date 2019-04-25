.class Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;
.super Landroid/os/AsyncTask;
.source "FileLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/log/FileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogFileWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/concurrent/CountDownLatch;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

.field final synthetic this$0:Lcom/android/server/enterprise/log/FileLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/log/FileLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;-><init>(Lcom/android/server/enterprise/log/FileLogger;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Void;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v0}, Lcom/android/server/enterprise/log/FileLogger;->access$200(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iput-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v0}, Lcom/android/server/enterprise/log/FileLogger;->access$600(Lcom/android/server/enterprise/log/FileLogger;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/enterprise/logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-wide v1, v1, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/FileLogger;->access$500(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v3, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter$1;-><init>(Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;Ljava/io/File;)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/enterprise/utils/IOExceptionHandler;->process(Lcom/android/server/enterprise/utils/IOExceptionHandler$IOProcessor;Z)V

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->lastTimeStamp:J

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    iget-object v3, v3, Lcom/android/server/enterprise/log/FileLogger$LogBuffer;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->access$300(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->lb:Lcom/android/server/enterprise/log/FileLogger$LogBuffer;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3}, Lcom/android/server/enterprise/log/FileLogger;->access$200(Lcom/android/server/enterprise/log/FileLogger;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/FileLogger;->access$702(Lcom/android/server/enterprise/log/FileLogger;Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;)Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;

    iget-object v3, p0, Lcom/android/server/enterprise/log/FileLogger$LogFileWriter;->this$0:Lcom/android/server/enterprise/log/FileLogger;

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/FileLogger;->access$100(Lcom/android/server/enterprise/log/FileLogger;Ljava/util/concurrent/CountDownLatch;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    aget-object v5, p1, v3

    if-eqz v5, :cond_2

    aget-object v5, p1, v3

    instance-of v5, v5, Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    return-object v4
.end method
